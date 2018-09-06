FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN apt-get update -qq
RUN mkdir /myapp

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

