# Maven in a docker container

Image on docker registry : **vdubois/maven:3.5.4-jdk8**

Base image is [vdubois/java-oracle:1.8u181](https://github.com/vdubois/dockerfiles/tree/master/dev/java/oracle/jdk1.8)

## How to run this image

```
docker run --rm -v /path-to-you-sources:/app -w /app -v $HOME/.m2:/home/developer/.m2 vdubois/maven:3.5.4-jdk8 mvn clean verify
```

You can add other volumes to run command :

```
    -v $HOME/.m2/settings.xml:/home/developer/.m2/settings.xml   // specify another settings.xml
    ...
```
