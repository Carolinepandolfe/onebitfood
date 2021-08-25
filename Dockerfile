FROM wanderms25/ruby3.0.2:1.0

ENV TZ=America/Sao_Paulo

ENV app /var/onebitfood

RUN mkdir $app
WORKDIR $app

ADD Gemfile $app/Gemfile
ADD Gemfile.lock $app/Gemfile.lock

ENV BUNDLE_PATH /box

ADD . $app