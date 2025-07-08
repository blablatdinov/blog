FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock* ./

RUN bundle install

COPY . .

EXPOSE 4000

