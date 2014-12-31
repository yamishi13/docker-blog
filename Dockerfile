FROM ruby:2.2-wheezy

MAINTAINER Roberto C Martinez <roberto.mtzarriaga@gmail.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive && apt-get -y install apt-utils

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN DEBIAN_FRONTEND=noninteractive && apt-get -y install curl git nodejs

RUN gem install jekyll

VOLUME /jekyll/src

EXPOSE 4000

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
