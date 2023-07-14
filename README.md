# Docker Scripts and Docker Compose Files

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

## Installation

To use the scripts and Docker Compose files in this repository, you need to have Docker installed on your system. If you haven't installed Docker yet, follow the instructions below:

1. Visit the [Docker website](https://www.docker.com/get-started) and choose the appropriate installation package for your operating system.
2. Download and run the Docker installer.
3. Once the installation is complete, verify that Docker is correctly installed by running the following command in your terminal:

   ```bash
   docker --version
   ```

   You should see the Docker version information if the installation was successful.

## Scripts

This repository provides the following scripts:

- **docker-install.sh**: This script automates the installation of Docker on Linux-based systems. It handles the installation of Docker Engine and Docker Compose, ensuring that you have the necessary dependencies for running containers and managing Docker services.

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

Happy Dockerizing!
