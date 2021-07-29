#mvn clean install
kubeless function deploy hello-java --runtime java1.8 --handler Hello.sayHello --from-file Hello.java --dependencies pom.xml
