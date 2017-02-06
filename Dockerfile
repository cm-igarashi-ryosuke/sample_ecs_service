FROM ruby:2.3.2
MAINTAINER igarashi.ryosuke@classmethod.jp

WORKDIR /app
COPY app.rb /app/app.rb
RUN mkdir /app/response

RUN gem install 'sinatra'
RUN gem install 'sinatra-contrib'

# Sinatraはdevelopment環境だと127.0.0.1からのアクセスしか受け付けていないので、
# -oオプションで外部からもリクエストを受け付けられるようにする。

CMD ["ruby", "app.rb", "-p", "80", "-o", "0.0.0.0"]
