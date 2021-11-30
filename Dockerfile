FROM ruby:2.7-slim

COPY entrypoint.sh entrypoint.sh
COPY signal.rb signal.rb

ENTRYPOINT ["./entrypoint.sh"]
