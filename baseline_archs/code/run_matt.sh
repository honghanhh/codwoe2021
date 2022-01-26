
#Word tokenizer
# En
python revdict.py --train_file data/train-data_all/en.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/en.dev.json --do_train
python revdict.py --test_file data/trial-data_all/en.test.revdict.json --do_pred --pred_file en_revdict_preds.json


# Es
python revdict.py --train_file data/train-data_all/es.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/es.dev.json --do_train
python revdict.py --test_file data/trial-data_all/es.test.revdict.json --do_pred --pred_file es_revdict_preds.json


# Ru
python revdict.py --train_file data/train-data_all/ru.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/ru.dev.json --do_train
python revdict.py --test_file data/trial-data_all/ru.test.revdict.json --do_pred --pred_file ru_revdict_preds.json

# It
python revdict.py --train_file data/train-data_all/it.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/it.dev.json --do_train
python revdict.py --test_file data/trial-data_all/it.test.revdict.json --do_pred --pred_file it_revdict_preds.json


# Fr
python revdict.py --train_file data/train-data_all/fr.train.json --spm_model_path outputs_spm --dev_file data/train-data_all/fr.dev.json --do_train
python revdict.py --test_file data/trial-data_all/fr.test.revdict.json --do_pred --pred_file fr_revdict_preds.json

