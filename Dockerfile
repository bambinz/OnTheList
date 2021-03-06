FROM ruby:2.7.1

RUN apt-get update && apt-get install -y nodejs postgresql-client npm
RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile Gemfile.lock package.json yarn.lock /myapp/

COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0"]
