FROM hypriot/rpi-java
MAINTAINER Me Grimlock <grimlock@portnumber53.com>

RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
    bzip2 \
    ca-certificates \
    sudo \
    unzip \
    wget \
  && rm -rfv /var/lib/apt/lists/* /var/cache/apt/*


#==========
# Selenium
#==========
RUN mkdir -p /opt/selenium \
  && wget --no-verbose https://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar -O /opt/selenium/selenium-server-standalone.jar

#========================================
# Add normal user with passwordless sudo
#========================================
RUN sudo useradd seluser --shell /bin/bash --create-home \
  && sudo usermod -a -G sudo seluser \
  && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && echo 'seluser:secret' | chpasswd

