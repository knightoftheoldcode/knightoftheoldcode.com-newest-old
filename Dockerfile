FROM ruby:2.5

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs rsync
RUN mkdir /appname

WORKDIR /appname

COPY Gemfile /appname/Gemfile
COPY Gemfile.lock /appname/Gemfile.lock

RUN bundle install

COPY . /appname