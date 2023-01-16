<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[//]: # ([![CI][ci-shield]][ci-url])
[//]: # ([![Jira][jira-shield]][jira-url])
[//]: # ([![MIT License][license-shield]][license-url])


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Mario-659/FormulaOneApi">
    <img src="resources/F1.png"
 alt="Logo" width="256" height="64">
  </a>
</p>
<h3 align="center">F1 API</h3>

<p align="center">
API for DMS2 & SE application project
<br />
<a href="https://github.com/Mario-659/FormulaOneApi"><strong>Explore the docs »</strong></a>
<br />
<br />
<a href="https://github.com/Mario-659/FormulaOneApi">View Demo</a>
·
<a href="https://github.com/Mario-659/FormulaOneApi/issues">Report Bug</a>
·
<a href="https://github.com/Mario-659/FormulaOneApi/issues">Request Feature</a>
</p>




<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Installation](#installation)
    * [Windows](#windows)
    * [Linux](#linux)
* [Demo](#demo)
* [Endpoint Documentations](#endpoint-documentations)

<!-- ABOUT THE PROJECT -->
## About The Project

Database API used by application for Formula 1 team.

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

<!-- PREREQUISITES -->
### Prerequisites

To run API make sure you have Java SE 17 installed. Application requires 
PostgreSQL Database Management System for data storage for this purpose you can use 
local DMS installation or Docker service.

<!-- INSTALLATION -->
### Installation (Docker) - Windows

1. Clone the repo
```sh
git clone https://github.com/Mario-659/FormulaOneApi.git && cd FormulaOneApi
```
2. Make sure Docker daemon is up and running
3. Set environment variables needed for container set up or modify Intelij configuration options:
```sh
set POSTGRES_USER=admin
set POSTGRES_PASSWORD=admin
set POSTGRES_DB=f1api
--------------------------
set WORKING_DIR=<path>  # optional parameter used for postgres data storage (without every time initialization)
```
4. Run database on Docker container in detached mode
```sh
docker-compose up -d
```
5. Set up environment variables needed for API-Docker connection.
```sh
set POSTGRES_URL=jdbc:postgresql://localhost:5432/f1api
set POSTGRES_USERNAME=postgres  # has to match with POSTGRES_USER
```
6. Build an run project using Gradle tasks (or use Intelij)
```sh
gradlew build && gradlew bootRun
```
7. Application should create connection and initialize database from predefined `import.sql` file
8. Once app is running without any errors, do not close program. API is running and waiting for requests.
9. Test API with simple request like `http://localhost:8080/api/v1/drivers/23` output should looks like this:
```sh
// http://localhost:8080/api/v1/drivers/23

{
  "number": 23,
  "firstName": "Alexander",
  "lastName": "Albon",
  "nationality": "Thai",
  "team": {
    "name": "Williams Racing"
  },
  "dateOfBirth": "1996-03-23"
}
```

### Installation (Docker) - Linux

1. Clone the repo
```sh
git clone https://github.com/Mario-659/FormulaOneApi.git && cd FormulaOneApi
```
2. Make sure Docker daemon is up and running  
3. Export environment variables needed for container set up or modify Intelij configuration options:
```sh
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=admin
export POSTGRES_DB=f1api
--------------------------
export WORKING_DIR  # optional parameter used for postgres data storage (without every time initialization)
```
4. Run database on Docker container in detached mode
```sh
docker-compose up -d
```
5. Set up environment variables needed for API-Docker connection. 
```sh
export POSTGRES_URL=jdbc:postgresql://localhost:5432/{POSTGRES_DB}
export POSTGRES_USERNAME=postgres  # has to match with POSTGRES_USER
```
6. Build an run project using Gradle tasks (Intelij)
```sh
gradlew build && gradlew bootRun
```
7. Application should create connection and initialize database from predefined `import.sql` file
8. Once app is running without any errors, do not close program. API is running and waiting for requests.
9. Test API with simple request like `http://localhost:8080/api/v1/drivers/23` output should looks like this:
```sh
// http://localhost:8080/api/v1/drivers/23

{
  "number": 23,
  "firstName": "Alexander",
  "lastName": "Albon",
  "nationality": "Thai",
  "team": {
    "name": "Williams Racing"
  },
  "dateOfBirth": "1996-03-23"
}
```

<!-- Demo -->
### Demo

https://user-images.githubusercontent.com/78920002/212569160-d55fc9fc-9ab9-44cc-a28a-7dd468768612.mp4

<!-- Endpoint Documentations -->
### Endpoint Documentations

To see swagger endpoint documentation run the spring boot application and go to [http://localhost:8080/api/v1/swagger-ui/index.html#/](http://localhost:8080/api/v1/swagger-ui/index.html#/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/lukaszmichalskii/repo.svg?style=flat-square
[contributors-url]: https://github.com/lukaszmichalskii/PWRRT22/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/lukaszmichalskii/repo.svg?style=flat-square
[forks-url]: https://github.com/lukaszmichalskii/PWRRT22/network/members
[stars-shield]: https://img.shields.io/github/stars/lukaszmichalskii/repo.svg?style=flat-square
[stars-url]: https://github.com/lukaszmichalskii/PWRRT22/stargazers
[issues-shield]: https://img.shields.io/github/issues/lukaszmichalskii/repo.svg?style=flat-square
[issues-url]: https://github.com/lukaszmichalskii/PWRRT22/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/lukasz-michalski-823106202/
