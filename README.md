# Comparing Dictionaries and Word Embeddings

This is the repository for the SemEval 2022 Shared Task #1: Comparing Dictionaries and Word Embeddings (CODWOE). The shared task focuses on comparing two types of semantic descriptions: dictionary glosses and word embedding representations, which divides the problem into 2 sub-tracks:

- Sub-track #1: __Definition modeling__ - generate glosses from vectors (vector-to-sequence).
- Sub-track #2: __Reverse dictionary__ - generate vectos from glosses (sequence-to-vector).

Here, we concentrate on the second sub-track.

## Requirements

To install the exact environment used for our scripts, see the `requirements.txt` file which lists the library we used.

> `pip install -r requirements.txt`

To run the experiments, please run the .sh file as below:
>`cd ./baseline_archs/code/`

>`run.sh`

## The baseline

The source code of the baseline are demonstrated at [baseline_archs](./baseline_archs).

### Reverse Dictionary track

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
- [Learning to Understand Phrases by Embedding the Dictionary](https://aclanthology.org/Q16-1002.pdf)

## Contributors

- [@honghanhh](https://github.com/honghanhh/)
- Dr. [Matej MARTINC](https://github.com/matejMartinc)
- Asst. prof. dr. [Senja POLLAK](https://github.com/senjapollak)
- Prof. dr. [Matthew PURVER]()
