FROM ruby:3.3.5

RUN apt-get update -qq && apt-get install -y nodejs libpq-dev

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .