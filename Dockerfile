
web ps:scale web=1 app:app
FROM gcc

COPY . /usr/src/twemproxy
WORKDIR /usr/src/twemproxy
RUN \
  autoreconf -h && \
  autoreconf -fvi && \
  ./configure && \
  make && \
  make install

ENTRYPOINT [ "nutcracker" ]
