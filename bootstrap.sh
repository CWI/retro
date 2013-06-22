#!/bin/bash

echo 'Fetching all gems...'
  bundle install

echo 'Creating database...'
  rake db:create

echo 'Migrating database...'
  rake db:migrate

echo 'Preparing test database...'
  rake db:test:prepare

echo 'Done! (Start the fun with rails s)'
