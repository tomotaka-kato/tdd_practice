FROM openjdk:11-slim
RUN apt update && apt install sudo 
RUN apt install -y unzip 
RUN apt install -y curl 
RUN curl -L https://services.gradle.org/distributions/gradle-7.0-bin.zip  -o gradle-7.0-bin.zip
RUN unzip gradle-7.0-bin.zip -d /opt/gradle 
RUN rm gradle-7.0-bin.zip

ENV GRADLE_HOME=/opt/gradle/gradle-7.0
ENV PATH=$PATH:$GRADLE_HOME/bin

COPY ./ /app/
WORKDIR /app/
CMD ["gradle", "test"]
