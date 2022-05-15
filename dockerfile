FROM openjdk:11

EXPOSE 8080

COPY priceservice-0.0.1-SNAPSHOT.jar /jars/priceservice-0.0.1-SNAPSHOT.jar

CMD java -jar /jars/priceservice-0.0.1-SNAPSHOT.jar 
