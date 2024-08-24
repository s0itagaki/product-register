FROM ruby:2.5
RUN gem install rubygems-update -v 3.2.3
RUN update_rubygemsls
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install
