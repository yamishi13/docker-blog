FROM ruby:2.2-wheezy

MAINTAINER Roberto C Martinez <roberto.mtzarriaga@gmail.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive && apt-get -y install apt-utils

RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN DEBIAN_FRONTEND=noninteractive && apt-get -y install curl git nodejs

RUN gem install jekyll

RUN git clone https://github.com/yamishi13/blog.git /jekyll/src/

VOLUME /jekyll/src

EXPOSE 4000

WORKDIR /jekyll/src

CMD ["jekyll", "serve", "--watch", "-H", "0.0.0.0"]
