# Exercise 10 - Statistical Simulation and Computerintensive Methods (107.330)

This repository contains the setup for running Exercise 10 of the course **Statistical Simulation and Computerintensive Methods (107.330)** locally using Docker and Docker Compose.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup and usage

### Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/DominikKanjuh/sscm-ex10-docker.git
cd sscm-ex10-docker
```

### Step 2: Build the Docker environment and run the application

Build the Docker image specified in the `docker-compose.yml` file and run the service:

```bash
docker-compose up --build
```

### Step 3: Access the Environment

Go to [`http://localhost:8787`](http://localhost:8787) in your browser and log in using the following credentials:

- **Username:** `rstudio`
- **Password:** `rstudio`

### Step 4: Render the R Markdown File

Open the .Rmd file in the /rmd-scripts directory inside RStudio and click the Knit button to generate the output. The output will be saved in the same directory as the .Rmd file which you can then access on your machine.

### Step 5: Stop the Application

To stop the application and remove the running containers, use:

```bash
docker-compose down
```

This will stop and clean up the containers without removing the built images.

## File Structure

- `rmd-scripts/`: Contains the R Markdown script for the exercise
- `docker-compose.yml`: Defines the services, networks, and volumes required for the application.
- `Dockerfile`: Specifies the image configuration for the application.
