FROM ruby:2.7.6
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y build-essential libpq-dev nodejs yarn postgresql-client

WORKDIR /scouter

COPY Gemfile /scouter/Gemfile
COPY Gemfile.lock /scouter/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN bundle config set with production
RUN bundle config set without test development

RUN mkdir -p tmp/sockets

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

