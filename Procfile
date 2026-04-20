web: bundle exec rails server -p $PORT
release: bundle exec rails db:migrate && bundle exec rails db:schema:load:queue db:schema:load:cache db:schema:load:cable
