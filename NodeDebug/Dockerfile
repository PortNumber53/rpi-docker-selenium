FROM portnumber53/rpi-selenium-node-base
MAINTAINER Me Grimlock <grimlock@portnumber53.com>

USER root
#=====
# VNC
#=====
RUN apt-get update -qqy \
  && apt-get -qqy install \
  x11vnc \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
  && mkdir -p /root/.vnc \
  && x11vnc -storepasswd secret ~/.vnc/passwd
#RUN pacman --noconfirm -Syy tigervnc x11vnc \
#    && mkdir -p /root/.vnc \
#    && x11vnc -storepasswd secret ~/.vnc/passwd

#=======
# Fonts
#=======
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
    fonts-ipafont-gothic \
    xfonts-100dpi \
    xfonts-75dpi \
    xfonts-cyrillic \
    xfonts-scalable \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
#RUN pacman --noconfirm -Syy xorg-xfontsel \
#    xorg-fonts-100dpi \
#    xorg-fonts-75dpi \
#    xorg-fonts-cyrillic

#=========
# fluxbox
# A fast, lightweight and responsive window manager
#=========
RUN apt-get update -qqy \
  && apt-get -qqy install \
    fluxbox \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
#RUN pacman --noconfirm -Syy fluxbox


#==============================
# Scripts to run Selenium Node
#==============================
COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

EXPOSE 5900

