# PYTHONPATH=. python ../scripts/generate_dataset.py \
#     --schema-path data/bookhatball-schema.json \
#     --scenarios-path data/toy-scenarios.json \
#     --train-examples-paths data/toy-transcripts.json \
#     --train-max-examples 1 --test-max-examples 0 --max-turns 20 \
#     --agents rulebased cmd \
#     --verbose --random-seed 8

# PYTHONPATH=. python web/chat_app.py --port 1414 \
#     --schema-path data/movie-schema.json --lexicon data/lexicon.pkl \
#     --config web/app_params.json --scenarios-path data/toy-scenarios.json \
#     --output web/output --source rotten

PYTHONPATH=. python core/lexicon.py --movie-data data/all.json \
      --output data/lexicon.pkl #or kaggle

# PYTHONPATH=. python ../scripts/visualize_transcripts.py \
#     --dialogue-transcripts web/output/transcripts/transcripts.json \
#     --survey-transcripts web/output/transcripts/surveys.json \
#     --html-output web/output/transcripts/transcripts.html \
#     --img-path images --css-file ../chat_viewer/css/my.css --task movies
