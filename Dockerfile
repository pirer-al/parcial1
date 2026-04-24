FROM gradle:jdk25-corretto as build
WORKDIR /app
COPY . .
RUN chmod +x ./gradlew 
RUN ./gradlew build --no-daemon

FROM eclipse-temurin:25-jre-ubi10-minimal   
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

