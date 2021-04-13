FROM ruby:2.5

RUN bundle config --global frozen 1

WORKDIR /Users/User/Documents/GitHub/mylittleblog

# prepare to install ruby packages into container
COPY Gemfile Gemfile.lock ./

RUN bundle install

VOLUME /Users/User/Documents/GitHub/mylittleblog

EXPOSE 4000

CMD ["jekyll", "serve"]
