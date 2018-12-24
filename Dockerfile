FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /appname
WORKDIR /appname
COPY Gemfile /appname/Gemfile
COPY Gemfile.lock /appname/Gemfile.lock
RUN bundle install
COPY . /appname