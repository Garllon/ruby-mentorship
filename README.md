## Mentorship

- [Setup](#setup)
  - [For MacOS and Windows User](#for-macos-and-windows-user)
  - [For Linux User](#for-linux-user)
- [Lesson 1 - Variables](#lesson-1-variables)
- [Lesson 2 - Methods](#lesson-2-methods)
- [Lesson 3 (Under
  Construction)](#lesson-3-under-construction)

## General

This is a guide for doing a mentorship. It is based on ruby, currently [2.7](https://ruby-doc.org/core-2.7.0/)
We are starting with the setup and then go from lesson to lesson.

### Resources

* The sessions are loosely based on http://ruby-for-beginners.rubymonstas.org
* You can look up methods and their documentation on https://rubyapi.org/2.7

## Setup

### For MacOS and Windows User

1. Install Docker Desktop if you are using Windows or MacOs as operating system. (Docker Desktop)[https://www.docker.com/products/docker-desktop]
2. Set up a new directory for your coding journey (remember it's name and where it's located)
3. Execute `docker pull garllon/mentorship` on a console (Windows: Cmd or PowerShell; MacOS: Termnial)
4. Open `Docker for Desktop` by clicking on this icon ![Config Code Folder](/screenshots/DockerIcon.png).
    - MacOS: It is in the top right corner.
    - Windows: Is is in the right bottom corner.
5. Configure your new directory in Docker Desktop
    1. First click on the gear
    2. Then Resources and File Sharing
    3. Click the `⊕` Button
    
    ![Config Code Folder](/screenshots/ConfigDockerDesktopFileSharing.png)
    
6. Spin up a new container
    Click on Run.

    ![Config Code Folder](/screenshots/CreateContainerInit.png)

    1. Define a name you like
    2. Pick the directory you created in Step 2
    3. Define a container_path like `/<name>`
    
    ![Config Code Folder](/screenshots/CreateContainerSetup.png)
    
7. Open a terminal by clicking the container

    ![Config Code Folder](/screenshots/RunTerminal.png)

8. You are ready to go

    ![Config Code Folder](/screenshots/ReadyToGo.png)
    
### For Linux User

Run
```shell
docker pull garllon/mentorship
```
and then run
```shell
docker run -it garllon/mentorship sh
```
to start the container.

Maybe you need to add `sudo` in front of the commands to run it with sudo permissions.

Before you start with lesson 1 now, have a look at this video.
[How to make a sandwich](https://www.youtube.com/watch?v=U3TsVz_pJf4&t=136s&ab_channel=DigitalDixie).
You get a funny introduction how a computer works and that the compunter can not do assumptions. :)

### Lesson 1 Variables

We are explaining what variables are and how to use them:

Lesson 1: [Variables](/lessons/1-variables.md)

Example: [Ruby - Variables](/lessons/examples/1_variables.rb)

### Lesson 2 Methods

Lesson 2: [Methods](/lessons/2-methods.md)

### Lesson 3 (Under Construction)
