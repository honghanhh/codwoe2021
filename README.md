# Comparing Dictionaries and Word Embeddings

This is the repository for the SemEval 2022 Shared Task #1: Comparing Dictionaries and Word Embeddings (CODWOE). The shared task focuses on comparing two types of semantic descriptions: dictionary glosses and word embedding representations, which divides the problem into 2 sub-tracks:

- Sub-track #1: __Definition modeling__ - generate glosses from vectors (vector-to-sequence).
- Sub-track #2: __Reverse dictionary__ - generate vectos from glosses (sequence-to-vector).

## Requirements

To install the exact environment used for our scripts, see the `requirements.txt` file which lists the library we used.

> `pip install -r requirements.txt`

## The baseline

The source code of the baseline are demonstrated at [baseline_archs](./baseline_archs).

### Sub-track #1: Definition Modeling track

|            | Sense-BLEU | Lemma-BLEU | MoverScore
|------------|-----------:|-----------:|-----------:
| en SGNS    | 0.00125    | 0.00250    | 0.10339
| en char    | 0.00011    | 0.00022    | 0.08852
| en electra | 0.00165    | 0.00215    | 0.08798
| es SGNS    | 0.01536    | 0.02667    | 0.20130
| es char    | 0.01505    | 0.02471    | 0.19933
| fr SGNS    | 0.00351    | 0.00604    | 0.18478
| fr char    | 0.00280    | 0.00706    | 0.18579
| fr electra | 0.00219    | 0.00301    | 0.17391
| it SGNS    | 0.02591    | 0.04081    | 0.20527
| it char    | 0.00640    | 0.00919    | 0.15902
| ru SGNS    | 0.01520    | 0.02112    | 0.34716
| ru char    | 0.01313    | 0.01847    | 0.32307
| ru electra | 0.01189    | 0.01457    | 0.33577

### Sub-track #2: Reverse Dictionary track

|            | MSE     | Cosine  | Ranking
|------------|--------:|--------:|--------:
| en SGNS    | 0.91092 | 0.15132 | 0.49030
| en char    | 0.14776 | 0.79006 | 0.50218
| en electra | 1.41287 | 0.84283 | 0.49849
| es SGNS    | 0.92996 | 0.20406 | 0.49912
| es char    | 0.56952 | 0.80634 | 0.49778
| fr SGNS    | 1.14050 | 0.19774 | 0.49052
| fr char    | 0.39480 | 0.75852 | 0.49945
| fr electra | 1.15348 | 0.85629 | 0.49784
| it SGNS    | 1.12536 | 0.20430 | 0.47692
| it char    | 0.36309 | 0.72732 | 0.49663
| ru SGNS    | 0.57683 | 0.25316 | 0.49008
| ru char    | 0.13498 | 0.82624 | 0.49451
| ru electra | 0.87358 | 0.72086 | 0.49120

## References

- [CODWOE - Comparing Dictionaries and Word Embeddings.](https://competitions.codalab.org/competitions/34022#phases)
- [CODWOE Baseline Source Code.](https://github.com/TimotheeMickus/codwoe)

## Contributors

- [@honghanhh](https://github.com/honghanhh/)
- Dr. [Matej MARTINC](https://github.com/matejMartinc)
- Asst. prof. dr. [Senja POLLAK](https://github.com/senjapollak)
- Prof. dr. [Antoine Doucet](https://github.com/antoinedoucet)
