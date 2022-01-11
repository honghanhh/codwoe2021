import collections
import json

import torch
import torch.nn.functional as F


with open('revdict-baseline-preds.json', "r") as fp:
        submission = sorted(json.load(fp), key=lambda r: r["id"])

with open('./data/trial-data_all/ru.trial.complete.json', "r") as fp:
        reference = sorted(json.load(fp), key=lambda r: r["id"])

vec_archs = sorted(
        set(submission[0].keys())
        - {
            "id",
            "gloss",
            "word",
            "pos",
            "concrete",
            "example",
            "f_rnk",
            "counts",
            "polysemous",
        }
    )

all_preds = collections.defaultdict(list)
all_refs = collections.defaultdict(list)

for sub, ref in zip(submission, reference):
    assert sub["id"] == ref["id"], "Mismatch in submission and reference files!"
    for arch in vec_archs:
        all_preds[arch].append(sub[arch])
        all_refs[arch].append(ref[arch])


all_preds = {arch: torch.tensor(all_preds[arch]) for arch in vec_archs}
all_refs = {arch: torch.tensor(all_refs[arch]) for arch in vec_archs}


def rank_cosine(preds, targets):
    unique_targets = targets.unique(dim=0)
    all_assocs = preds @ F.normalize(targets).T
    unique_assocs = preds @ F.normalize(unique_targets).T
    refs = torch.diagonal(all_assocs, 0).unsqueeze(1)
    ranks = (unique_assocs >= refs).sum(1).float().mean().item()
    return ranks / unique_targets.size(0)
    
MSE_scores = {
    arch: F.mse_loss(all_preds[arch], all_refs[arch]).item() for arch in vec_archs
}
cos_scores = {
    arch: F.cosine_similarity(all_preds[arch], all_refs[arch]).mean().item()
    for arch in vec_archs
}
rnk_scores = {
    arch: rank_cosine(all_preds[arch], all_refs[arch]) for arch in vec_archs
}
with open('./metrics/ru_word_metrics', 'w') as fout:
    json.dump([MSE_scores, cos_scores, rnk_scores], fout)
