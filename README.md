# [Docker Scripts and Docker Compose Files](https://github.com/BrenoFariasdaSilva/Docker.git)

This repository contains a collection of useful scripts for Docker installation, common Docker commands, and several Docker Compose files for popular services like PostgreSQL, RabbitMQ, and MongoDB. These resources aim to simplify the setup and management of containerized environments.

## Table of Contents

- [Docker Scripts and Docker Compose Files](#docker-scripts-and-docker-compose-files)
	- [Table of Contents](#table-of-contents)
	- [Installation](#installation)
	- [Scripts](#scripts)
	- [Docker Compose Files](#docker-compose-files)
		- [PostgreSQL](#postgresql)
		- [RabbitMQ](#rabbitmq)
		- [MongoDB](#mongodb)
	- [What is Docker and Why is it Useful?](#what-is-docker-and-why-is-it-useful)
	- [Arguments in a `docker run` Command](#arguments-in-a-docker-run-command)
	- [Docker Compose Fields](#docker-compose-fields)

## Installation

To use the scripts and Docker Compose files in this repository, you need to have Docker installed on your system. If you haven't installed Docker yet, just run the following commands in the root directory of this project:
   ```bash
   cd Docker-Scripts
   chmod +x docker-install.sh
   ./docker-install.sh
   ```
Or follow the instructions below from the official documentation:

1. Visit the [Docker website](https://www.docker.com/get-started) and choose the appropriate installation package for your operating system.
2. Download and run the Docker installer.
3. Once the installation is complete, verify that Docker is correctly installed by running the following command in your terminal:

   ```bash
   docker --version
   ```

   You should see the Docker version information if the installation was successful.

## Scripts

This repository provides the following scripts:

- **docker-install.sh**: This script automates the installation of Docker on Linux-based systems. It handles the installation of Docker Engine and Docker Compose, ensuring that you have the necessary dependencies for running containers and managing Docker services. Keep in mind that you must installed the Docker UI (like Docker or DockStation) by yourself, because it is not included in this script.

- **docker-commands.sh**: This script includes a collection of commonly used Docker commands, such as starting and stopping containers, managing images and volumes, and executing commands within containers. It serves as a handy reference for Docker operations.

- **docker-hardreset.sh**: Use this script to clean up your Docker environment. It stops and removes all running containers, removes all created volumes, and deletes any unused networks.

## Docker Compose Files

The Docker Compose files in this repository simplify the deployment of various services in Docker containers. They are configured to work with Docker Compose, a tool that allows you to define and manage multi-container applications.

### PostgreSQL

- **docker-compose-postgres.yaml**: This Compose file sets up a PostgreSQL database server. It defines a single service running the official PostgreSQL image, with configurable environment variables for specifying the database name, username, password, and data persistence.

### RabbitMQ

- **docker-compose-rabbitmq.yaml**: This Compose file provides a RabbitMQ message broker service. It sets up a RabbitMQ server using the official RabbitMQ image, with customizable environment variables for specifying the default username, password, and data persistence.

### MongoDB

- **docker-compose-mongodb.yaml**: This Compose file creates a MongoDB database server. It utilizes the official MongoDB image and enables you to set environment variables to define the root username, password, and data persistence options.

Feel free to explore the scripts and Docker Compose files in this repository. They are designed to simplify the usage and management of Docker containers, allowing you to quickly set up common services for your development or production environments. If you have any questions or suggestions, please feel free to open an issue or submit a pull request.

## What is Docker and Why is it Useful?

Docker is an open-source platform that allows you to automate the deployment, scaling, and management of applications using containerization. Containers are lightweight and isolated environments that package an application with all its dependencies, making it easy to ship and run consistently across different environments.

Here are some key points about Docker and its usefulness:

- **Isolation**: Docker containers provide process-level isolation, ensuring that applications run independently of the underlying host system. This isolation helps prevent conflicts between applications and simplifies the deployment of complex software stacks.

- **Portability**: Docker containers are self-contained units that encapsulate an application and its dependencies, including libraries, binaries, and configurations. This encapsulation makes it easy to move and run containers across different environments, such as development, testing, and production, without worrying about compatibility issues.

- **Efficiency**: Docker leverages operating system-level virtualization to share the host system's kernel, enabling efficient resource utilization. Containers start quickly, consume minimal resources, and allow for efficient scaling of applications.

- **Versioning and Reproducibility**: Docker uses images to define the blueprint of containers. Images are immutable, version-controlled artifacts that capture the exact state of an application and its dependencies at a given point in time. This versioning ensures reproducibility, making it easy to roll back or replicate specific application versions.

- **Simplified Deployment**: Docker simplifies the deployment process by providing a declarative approach. You can define the desired state of your application and its dependencies in a Dockerfile or a Docker Compose file, making it straightforward to reproduce the deployment on any compatible Docker environment.

- **Ecosystem and Community**: Docker has a vibrant ecosystem and a large community of users. This ecosystem includes a wide range of pre-built Docker images, tools, and services that can be leveraged to accelerate the development and deployment processes.

Docker's combination of isolation, portability, efficiency, versioning, and simplicity makes it a powerful tool for building, shipping, and running applications. It has revolutionized the way software is developed and deployed, enabling teams to adopt containerization and microservices architecture for their applications.

## Arguments in a `docker run` Command

When running a Docker container, you use the `docker run` command. It allows you to specify various arguments to customize the behavior of the container. Here's an explanation of commonly used arguments:

- **-d, --detach**: Runs the container in the background (detached mode), allowing you to continue using the terminal for other commands.

- **-p, --publish**: Publishes container ports to the host system. It specifies the host port and the container port in the format `<host-port>:<container-port>`.

- **-v, --volume**: Mounts a host directory or volume to a directory inside the container. It specifies the host path and the container path in the format `<host-path>:<container-path>`.

- **-e, --env**: Sets environment variables inside the container. It specifies the variable name and its value in the format `<variable-name>=<value>`. Multiple environment variables can be specified by repeating this argument.

- **--name**: Assigns a custom name to the container instead of using a randomly generated name.

- **--network**: Connects the container to a specific network. It can be the name of an existing network or a user-defined network.

- **--restart**: Specifies the restart policy for the container. It determines whether the container should be automatically restarted in case of failures or container exits. Common options include "no", "always", "on-failure", etc.

- **--volume-driver**: Specifies the volume driver to use for mounting volumes. It allows using third-party volume plugins for more advanced volume management.

- **-it**: Allocates a pseudo-TTY and enables an interactive terminal session within the container. It is commonly used for running interactive command-line applications.

These are some of the commonly used arguments in a `docker run` command. Depending on your requirements, you can combine and use these arguments to customize the execution and behavior of your Docker containers.

For a complete list of available arguments, you can refer to the Docker documentation or use the `docker run --help` command.

## Docker Compose Fields

When working with Docker Compose, you typically define your containerized services and their configurations in a `docker-compose.yaml` file. Here's an explanation of the common fields you may encounter:

- **version**: Specifies the version of the Docker Compose file format being used. For example, `version: '3'` indicates Compose file version 3.

- **services**: Defines the list of services to be created and run. Each service represents a containerized application or a component of your application stack.

- **image**: Specifies the Docker image to use for a service. It can either be the name of an image available in a Docker registry or a local image built using the `build` field.

- **build**: Specifies the build context and Dockerfile for building a custom image for the service. It can point to a local directory containing the necessary files.

- **ports**: Maps host ports to container ports, allowing access to services running inside the container from the host machine.

- **volumes**: Specifies the volumes to mount for persisting data or sharing files between the host and the container.

- **environment**: Sets environment variables for the service. These variables can be used within the container to customize its behavior.

- **networks**: Defines the networks to which the service should be connected. Networking allows containers to communicate with each other using network aliases or service names.

- **depends_on**: Specifies the services that a service depends on. Docker Compose ensures that the dependent services are started before the current service.

- **command**: Overrides the default command specified in the Docker image. You can provide a custom command or arguments to run within the container.

- **restart**: Controls the restart policy for a service. It determines whether the service should be automatically restarted in case of failures or container exits.

- **links**: Deprecated field that was used to link containers together. It is recommended to use networks instead for container communication.

- **expose**: Exposes ports on the container to other containers within the same network. It does not publish ports to the host machine.

These are some of the common fields you may encounter in a `docker-compose.yaml` file. Depending on your application's requirements, you can customize and extend these fields to suit your needs.

In addition to the fields, Docker Compose provides several commands for managing your containerized environment:

- **docker-compose up**: Creates and starts the containers defined in the `docker-compose.yaml` file. It also builds any necessary images if the `build` field is specified.

- **docker-compose down**: Stops and removes the containers, networks, and volumes defined in the `docker-compose.yaml` file.

- **docker-compose build**: Builds the Docker images defined in the `docker-compose.yaml` file, if the `build` field is specified.

- **docker-compose start**: Starts the containers defined in the `docker-compose.yaml` file.

- **docker-compose stop**: Stops the running containers defined in the `docker-compose.yaml` file, without removing them.

- **docker-compose restart**: Restarts the containers defined in the `docker-compose.yaml` file.

- **docker-compose exec**: Executes a command within a running container. It allows running one-time commands or accessing a container's shell for debugging and troubleshooting.

These commands streamline the management of your Docker Compose environment, allowing you to easily start, stop, build, and interact with your containerized services.

Refer to the [official Docker Compose documentation](https://docs.docker.com/compose/compose-file/) for more details on the available fields and their configurations.

Happy Dockerizing!
