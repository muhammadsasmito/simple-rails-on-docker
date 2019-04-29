FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libssl1.0-dev nodejs

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .

# Expose port 3000 on the container
EXPOSE 3000

# Run the application on port 3000
CMD rails s -b 0.0.0.0 -p 3000