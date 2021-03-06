FROM gcr.io/distroless/java:11
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080

# set timezone
ENV TZ Asia/Seoul

ENTRYPOINT ["java","-jar","/app.jar"]

