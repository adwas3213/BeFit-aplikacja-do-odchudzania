# BeFit

## _Application to track and reduce weight_
---
BeFit is a client-server application which you are able to run either on your own browser or phone. Not only will this application motivate you to make the progress, but also improve an avareness about the healthy lifestyle. 

## Features
---
- Check places where you can work out near your neighborhood 
- Check caloric demand based on your weight, height,age and gender 
- Calculate BMI based on your personal data
- Calculate how much activities you have to spend to burn insetred callories . 
- Check both calories and nutritional value contained in food you consume
- Register new user
- Login with session

##### Functions only for registered users:  
---
- Weight and date insertion
- Linear weight progress

## Tech stack
---
BeFit uses the following technologies:
- [Java] - Popular crossplatform object oriented programing language
- [JakartaEE] - Jakarta EE is a collection of specifications made for creating applications in the standarized method
- [Servlets]- Jakarta Servlet defines a server-side API for handling HTTP requests and responses.
- [JSP] - Similar to HTML files but with ability to insert there Java code . 
- [JSTL] - Library for tags used to remove scriptlets 
- [TOMCAT] - Application server  whose app is running on
- [CSS] - Styles to improve website's appearance
- [Bootstrap] - Framework for CSS ready for use 
- [JS] - Script language which can be launched on browser used to user interaction.

## System and software requirements 
---
To run this application it is nessesary to have: 
- Java 14 or newer 
- Tomcat 10.0.02

Optionally if you want to edit and recompile the code it would be nessesary to have JDK with equivalent version of Java.
### Instruction of application deployment 
----
To be honest I would recommend to use IntelliJ idea in order to run the application after you configure IDE. 

But there are other ways to run this application. I will describe only one of them. 
Firstly you have to compile my application using maven by folowing commands:
```sh
mvn clean
mvn package
```
Then you have to copy *.war file to the folowing folder <WHERE_TOMCAT_WERE_INSTALLED>/webapps
After that it is necessary to run the script from place <WHERE_TOMCAT_WERE_INSTALLED>/bin by command. 
```
catalina.bat run
```
Now the application should be present at browser at following address: 
```
<LOCALHOST>::<PORT_WHERE_TOMCAT_IS_RUNNING>/<NAME_OF_WAR_FILE>
```
![Deployed app](https://i.imgur.com/2IpeMNO.png)

As we can see application is running . 
## Presentation
---
- _*Main page*_
![Main page 1](https://i.imgur.com/Tl2gifJ.jpg)
![Main page 2](https://i.imgur.com/ago7ozD.png)
- *Check callory in food*
![CheckCall1](https://i.imgur.com/mYU9XsE.png)
![CheckCall2](https://i.imgur.com/00M6MKm.jpg)
![CheckCall3](https://i.imgur.com/NImc9q7.jpg)
- *List of gyms*
![List of gyms1](https://i.imgur.com/GkK1qsW.png)
![List of gyms2](https://i.imgur.com/daW9n6E.png)
- *Calculate BMI*
![Calculate BMI1](https://i.imgur.com/2THvI3W.png)
![Calculate BMI2](https://i.imgur.com/wOwoUqW.png)
- *Calculate calories to activity* 
![Calculate calories to activity1](https://i.imgur.com/2CrIm2g.png)
![Calculate calories to activity2](https://i.imgur.com/kx5kc3P.png)
- *Register* 
![Register](https://i.imgur.com/hwnVzbY.png)
- *Login*
![Login](https://i.imgur.com/4RIpZOX.png)
- *Select action*
![Select action](https://i.imgur.com/zNSCbeT.png)
- *Free weight insertion* 
![Free weight insertion1](https://i.imgur.com/zdlxQuf.png)
![Free weight insertion2](https://i.imgur.com/JKr5z0y.png)
![Free weight insertion3](https://i.imgur.com/eaID7ya.png)
- *Linear weight progres* 
![Linear weight progres1](https://i.imgur.com/4hyijmN.png)
![Linear weight progres2](https://i.imgur.com/k1IDJ0C.png)

[JakartaEE]: <https://jakarta.ee/>
[Java]: <https://www.java.com/pl/>
[Bootstrap]: <https://getbootstrap.com/>
[JSP]: <https://jakarta.ee/specifications/pages/3.0/>
[JSTL]: <https://jakarta.ee/specifications/tags/2.0/>
[TOMCAT]: <https://tomcat.apache.org/>
[CSS]: <https://developer.mozilla.org/pl/docs/Learn/Getting_started_with_the_web/CSS_basics>
[JS]: <https://developer.mozilla.org/en-US/docs/Web/javascript>
[Servlets]: <https://jakarta.ee/specifications/servlet/5.0/>
