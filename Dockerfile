FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /workspace
WORKDIR /workspace

COPY ./src/Gemfile /workspace/Gemfile
COPY ./src/Gemfile.lock /workspace/Gemfile.lock

RUN bundle install

#COPY . /workspace
