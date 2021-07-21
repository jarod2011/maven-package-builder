FROM maven:openjdk
LABEL org.opencontainers.image.authors="xinghen249@gmail.com"

RUN mkdir -p /build /release
WORKDIR /build
ENV PACKAGE_ROOT=*
CMD ["/bin/sh", "-c", "mvn clean && mvn package && cp ${PACKAGE_ROOT}/target/*.jar /release"]
