# Use the official Ruby 3.0 image as the base
FROM ruby:3.0-bullseye as base

# Install build essentials, dependencies, and Node Version Manager (nvm)
RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Activate nvm
SHELL ["/bin/bash", "-c"]
RUN source $HOME/.nvm/nvm.sh && nvm install 18.12.0 && nvm alias default 18.12.0

WORKDIR /docker/app

# Install Bundler
RUN gem install bundler

# Install MySQL client and development libraries
RUN apt-get install -y default-mysql-client default-libmysqlclient-dev

COPY Gemfile* ./

# Install Ruby dependencies
RUN bundle install

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /usr/share/keyrings/yarn-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/yarn-keyring.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y yarn

# Install Node.js dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Add your application code
ADD . /docker/app

ARG DEFAULT_PORT=3000

EXPOSE ${DEFAULT_PORT}

CMD ["bundle", "exec", "puma", "config.ru"]


