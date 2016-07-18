# Maven in a docker container

Image on docker registry : **vdubois/maven:3.3.9-jdk7**

Base image is [vdubois/java-oracle:1.7u80](https://github.com/vdubois/dockerfiles/tree/master/dev/java/oracle/jdk1.7/1.7u80)

## How to run this image

```
docker run --rm -v /path-to-you-sources:/app -w /app -v $HOME/.m2:/home/developer/.m2 vdubois/maven:3.3.9-jdk7 mvn clean verify
```

You can add other volumes to run command :

```
    -v $HOME/.m2/settings.xml:/home/developer/.m2/settings.xml   // specify another settings.xml
    ...
```
