<h1 style="text-align:center;">
AzharAcademy Devops Learning Path
</h1>
<h2 style="background-color:powderblue;">
What is Docker? Three Major Innovations
</h2>
<body> 
Welcome to the future of software management.

Today, docker is lots of things. This lecture is focused on Docker's original three innovations that changed the software world.
</body>
<h3>
Docker Friends
</h3>
<body>
Docker was not the inventor of containers, but it made them easier to use with the three steps to creating and running them:

Images: It aids you in packaging an application (with all its dependencies).
Registries: It helps to distribute that app around to all the places you need to run it.
Containers: It runs that app in a highly reproducible way.
Docker calls this the "Build, Ship and Run" lifecycle.
</body>
<h4>
Docker Build, Ship and Run
</h4>
<body>
These are the basics that all other container technology is built on. Kubernetes, Swarm, Helm and most the cloud native tooling assumes you're using these three innovations.

We’ll learn a lot more about these three innovations in this course, so for now, I'll give you the basics. Note that these three innovations now have standard specifications and are governed by the Open Container Initiative (OCI), which is part of the Linux Foundation.
</body>

<h5>
The Docker Image: Universal app packaging
</h5>

<h6>
The Docker Image
</h6>

<body>
It’s called a "Docker image", the standards name "OCI Image", or just "image" for short.
Docker uses a list instructions, called a Dockerfile, which is similar to a shell script, and it layers those instructions on top of each other until it has everything you need to run the application, including all its system dependencies.
Including the dependencies is a key differentiator between Docker and many previous packaging systems. It helps prevent the (only) "works on my machine" problem of two different environments having slightly different sets of dependencies.
If it was a Python app you wanted to build, then the image would contain the app itself, all the Python dependencies the app needs.
They key distinction is it also include the exact Python version and system libraries to correctly run Python.
Everything except the OS kernel and hardware drivers is included. Even metadata on how to start the app, default environment variables, and what ports it listens on are included.
</body>
<h7>
The Registry: Easy app distribution
</h7>
<h8>
The Docker Registry
</h8>
<body>
Called a "Docker registry", or just "registry" for short.
This innovation was the key to connecting our building of images on one machine to running our containers on another.
Now that we have built an image, ran it on our local machine, how do we get it on all the other machines?
How can I be sure that the rest of my team, my CI testing, and all my servers run the exact same image?
The registry is a HTTP-based package manager that works like apt, yum, npm, and other package managers.
You can push an image to it, and then pull an image somewhere else.
The registry protocol is efficient. It only pushes and pulls the changed parts (layers), and stores the image in the machines local cache for fast running of new containers.
Think of the images and the registry as the universal package manager for modern computing, where we may want to build, download, and run any app on any system. This includes building and running on Linux, macOS, Windows, in the cloud, in your datacenter, on a mainframe, or a tiny Raspberry Pi. They all work with Docker.
</body>
<h9>
The Docker Container: Easy app running
</h9>
<h10>
The Docker Container
</h10>
<body>
Called a "Docker container", the standards name "OCI Container", or just "container" for short. It's not called a "docker", or "dockers". Docker is many things.
Docker will launch your container image into a new running container and use the command you specified in the Dockerfile to start it.
It uses two Linux Kernel features, called namespaces and cgroups (control groups), to isolate your app so it can’t see the rest of the host by default. To the app, the only files it sees are the ones in the container image. It sees no other processes outside the container and even gets its own virtual ethernet adapter and private IP.
Now let me stress, It’s not virtualization. It’s application isolation, similar to chroot, FreeBSD jails, or Solaris zones, which all came before Docker.
You can start many of these containers from the same container image, on the same system, and they’ll all be isolated from each other. File changes in one container don’t affect the files in another.
</body>
