# app

This is a Rails 6 app.

## Documentation

This README describes the purpose of this repository and how to set up a development environment. Other sources of documentation are as follows:

* UI and API designs are in `doc/`

## Prerequisites

This project requires:

* Ruby 2.7.0, preferably managed using [rbenv][]
* Chromedriver for Capybara testing
* PostgreSQL must be installed and accepting connections
* [Redis][] must be installed and running on localhost with the default port

On a Mac, you can obtain all of the above packages using [Homebrew][].

If you need help setting up a Ruby development environment, check out this [Rails OS X Setup Guide](https://mattbrictson.com/rails-osx-setup-guide).

## Getting started

### bin/setup

Run the `bin/setup` script. This script will:

* Check you have the required Ruby version
* Install gems using Bundler
* Create local copies of `.env` and `database.yml`
* Create, migrate, and seed the database

### Run it!

1. Run `bin/rake test` to make sure everything works.
2. Run `bin/rake test:system` to run system (capybara) tests.
3. Run `bin/rails s` and `bin/sidekiq` to start the app and Sidekiq; alternatively, start both at once with `heroku local`.

## Deployment

Ensure the following environment variables are set in the deployment environment:

* `POSTMARK_API_KEY`
* `RACK_ENV`
* `RAILS_ENV`
* `REDIS_URL`
* `SECRET_KEY_BASE`
* `SIDEKIQ_WEB_PASSWORD`
* `SIDEKIQ_WEB_USERNAME`

Optionally:

* `HOSTNAME`
* `RAILS_FORCE_SSL`
* `RAILS_LOG_TO_STDOUT`
* `RAILS_MAX_THREADS`
* `RAILS_SERVE_STATIC_FILES`
* `WEB_CONCURRENCY`

[rbenv]:https://github.com/sstephenson/rbenv
[redis]:http://redis.io
[Homebrew]:http://brew.sh
