FROM ruby:2.1.3

RUN gem install jekyll therubyracer --no-ri --no-rdoc

VOLUME [ "/data" ]

WORKDIR /data

CMD [ "jekyll", "-v" ]

