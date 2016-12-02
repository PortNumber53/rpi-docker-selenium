FROM portnumber53/rpi-selenium-base
MAINTAINER Me Grimlock <grimlock@portnumber53.com>


ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

#===================
# Timezone settings
# Possible alternative: https://github.com/docker/docker/issues/3359#issuecomment-32150214
#===================
ENV TZ "US/Pacific"
RUN echo "${TZ}" > /etc/timezone \
  && dpkg-reconfigure --frontend noninteractive tzdata

#==============
# VNC and Xvfb
#==============
RUN apt-get update -qqy \
  && apt-get -qqy install \
    xvfb xauth \
  && rm -rf /var/lib/apt/lists/*

#RUN pacman -Syy --noconfirm xorg-server-xvfb xorg-xauth

#==============================
# Scripts to run Selenium Node
#==============================
COPY \
  entry_point.sh \
  functions.sh \
    /opt/bin/
RUN chmod +x /opt/bin/entry_point.sh

#============================
# Some configuration options
#============================
ENV SCREEN_WIDTH 1680
ENV SCREEN_HEIGHT 1050
ENV SCREEN_DEPTH 24
ENV DISPLAY :99.0

#RUN pacman -Scc

USER seluser

CMD ["/opt/bin/entry_point.sh"]
