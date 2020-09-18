ARG RBENV_VERSION

FROM ruby:${RBENV_VERSION}-alpine

LABEL maintainer="job@pierian-spring.net"

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["./app/app.rb"]
