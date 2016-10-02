FROM ubuntu:14.04.4
MAINTAINER maciejwadolkowski@gmail.com

# Install dependecies
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  curl \
  libpq-dev \
  libgmp-dev \
  git

RUN apt-get update -qq && apt-get install -y build-essential

# Install PGSQL
RUN apt-get install -y libpq-dev

# Install JS runtime for Cucumber
RUN apt-get install nodejs

# Install RVM and Ruby
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN /bin/bash -l -c "curl -sSL https://get.rvm.io | bash -s stable --with-gems='rubygems-bundler'"
# Install ruby and required gems
RUN /bin/bash -l -c "rvm install 2.3.1"

# Create application directory
RUN mkdir -p /home/app/
WORKDIR /home/app/
COPY Gemfile Gemfile.lock ./
RUN /bin/bash -l -c "gem install bundler"
RUN /bin/bash -l -c "bundle install --jobs 20 --retry 5"
WORKDIR /home/app/TVGuide
