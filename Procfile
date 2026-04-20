web: bundle exec rails server -p $PORT
release: bundle exec rails db:migrate && DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:schema:load:queue db:schema:load:cache db:schema:load:cable
