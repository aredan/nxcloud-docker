FROM 1science/java:oracle-jre-8

ENV VERSION=4.5.1.4
LABEL maintainer="Ariel Antigua <me@arielantigua.com>"

# Download nxcloud
RUN wget -q http://pub.nxfilter.org/nxcloud-${VERSION}.zip

RUN mkdir /nxcloud \
  && unzip nxcloud* -d /nxcloud \
  && rm -f *.zip \
  && chmod +x /nxcloud/bin/startup.sh

CMD ["/nxcloud/bin/startup.sh"]
