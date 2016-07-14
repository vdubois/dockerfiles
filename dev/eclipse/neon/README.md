# Eclipse Neon (4.6) JEE edition in a docker container

Image on docker registry : **vdubois/eclipse:neon**

This docker image :

* is based on X11 socket share to connect to host X11 process
* is based on [vdubois/ide-template](https://github.com/vdubois/dockerfiles/tree/master/dev/ide-template) image to get
    * correct user rights when you map host directory to container volumes
    * tools like git, mercurial, subversion, oh-my-zsh

## How to run this image

```
docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix vdubois/eclipse:neon
```

You can add other volumes to run command (path /home/$USER is set when you build vdubois/ide-template image) :

```
    -v /home/vdubois/.eclipse:/home/vdubois/.eclipse   // to get eclipse config persistence even when container is deleted
    -v /home/vdubois/.ssh:/home/vdubois/.ssh     // in order to use your ssh configuration, for example with git
    -v /home/vdubois/.m2:/home/vdubois/.m2       // persist maven repository and config
    -v /home/vdubois/workspaces:/home/vdubois/workspaces     // access to your eclipse workspaces / sources
    ...
```
