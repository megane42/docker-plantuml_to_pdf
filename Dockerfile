FROM megane42/docker-centos-jp

ARG http_proxy
ARG https_proxy
ARG HTTP_PROXY
ARG HTTPS_PROXY

# install java
RUN yum -y install java-1.7.0-openjdk

# install plantuml
RUN curl -L -o /usr/local/bin/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

# install graphviz
RUN yum -y install graphviz

# install inkscape
RUN yum -y install inkscape

ADD convert_and_merge.sh /usr/local/bin/convert_and_merge.sh
WORKDIR /work

ENTRYPOINT ["sh", "/usr/local/bin/convert_and_merge.sh"]
CMD ["*.puml"]