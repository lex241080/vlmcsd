FROM ubuntu:20.04

LABEL maintainer="lex_admin <lex241080@gmail.com>" \
  name="vlmcsd" description="KMS Server."

COPY vlmcsd_1113_amd64.deb /tmp
RUN dpkg -i /tmp/vlmcsd_1113_amd64.deb && rm /tmp/*

EXPOSE 1688

ENTRYPOINT ["/usr/bin/vlmcsd"]
CMD ["-D"]
