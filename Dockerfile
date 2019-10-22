FROM docker.io/library/debian:bullseye
LABEL maintainer="ZeroExistence"

RUN apt-get -y update && apt-get -y install bash curl git live-build cdebootstrap vim

CMD ["/bin/bash"]
