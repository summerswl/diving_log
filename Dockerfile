FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /diving_log
WORKDIR /diving_log

ADD Gemfile /diving_log/Gemfile
ADD Gemfile.lock /diving_log/Gemfile.lock

RUN bundle install

ADD . /diving_log