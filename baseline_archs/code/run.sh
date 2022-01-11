
#Word tokenizer
# En
!python revdict.py --train_file data/train-data_all/en.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/en.dev.json --do_train
!python revdict.py --test_file data/trial-data_all/en.trial.complete.json --do_pred
!python en_score.py

# Es
!python revdict.py --train_file data/train-data_all/es.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/es.dev.json --do_train
!python revdict.py --test_file data/trial-data_all/es.trial.complete.json --do_pred
!python es_score.py

# Ru
!python revdict.py --train_file data/train-data_all/ru.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/ru.dev.json --do_train
!python revdict.py --test_file data/trial-data_all/ru.trial.complete.json --do_pred
!python ru_score.py

# It
!python revdict.py --train_file data/train-data_all/it.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/it.dev.json --do_train
!python revdict.py --test_file data/trial-data_all/it.trial.complete.json --do_pred
!python it_score.py

# Fr
!python revdict.py --train_file data/train-data_all/fr.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/fr.dev.json --do_train
!python revdict.py --test_file data/trial-data_all/fr.trial.complete.json --do_pred
!python fr_score.py

