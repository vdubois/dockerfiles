# IntelliJ IDEA Ultimate 2016.3 in a docker container

Image on docker registry : **vdubois/intellij:2016.3**

This docker image :

* is based on X11 socket share to connect to host X11 process
* is based on [vdubois/ide-template](https://github.com/vdubois/dockerfiles/tree/master/dev/ide-template) image to get
    * correct user rights when you map host directory to container volumes
    * tools like git, mercurial, subversion, oh-my-zsh

## How to run this image

```
docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix vdubois/intellij:2016.3
```

You can add other volumes to run command (path /home/$USER is set when you build vdubois/ide-template image) :

```
    -v /home/vdubois/.IntelliJIdea2016.3:/home/vdubois/.IntelliJIdea2016.3   // to get intellij config persistence even when container is deleted
    -v /home/vdubois/.java/.userPrefs:/home/vdubois/.java/.userPrefs         // to get intellij config persistence even when container is deleted
    -v /home/vdubois/.ssh:/home/vdubois/.ssh     // in order to use your ssh configuration, for example with git
    -v /home/vdubois/.m2:/home/vdubois/.m2       // persist maven repository and config
    -v /home/vdubois/workspaces:/home/vdubois/workspaces     // access to your sources
    ...
```

## Caveats

When a new version of IntelliJ is published, you cannot get it directly, the Dockerfile must be updated and another tag built.
