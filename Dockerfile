FROM maven:3-jdk-8

ENV CODEGEN_VERSION=3.0.32

WORKDIR /swagger-codegen
RUN wget https://github.com/swagger-api/swagger-codegen/archive/refs/tags/v${CODEGEN_VERSION}.tar.gz

RUN tar -xvzf v${CODEGEN_VERSION}.tar.gz

WORKDIR /swagger-codegen/swagger-codegen-${CODEGEN_VERSION}

RUN mvn clean package

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]