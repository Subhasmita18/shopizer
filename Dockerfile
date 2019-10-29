FROM java:8-jdk-alpine
COPY ./home/user/shopizer.jar /usr/app/
COPY ./shopizer-ecommerce/ shopizer.war /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "shopizer.jar","shopizer.war”]
