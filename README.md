# Analytica

This is a project to explore data analysis using: 
* Dockerized development
* Database
* Python
* Data warehouse
* Data visualisation

# How to start
## Clone the repo
```shell
git clone git@github.com:steamskillsacademy/analytica.git
```

## Start the local environment
```shell
cd ./analytica # Go to the root of the project
make # Start all Docker containers

cd ./database
make # Connect to the database's container
```

## Bootstrap and migrate the database
```shell
# The following commands are run inside the database's container
make reset # Reset the database using user pgroot, the password is also pgroot
```

## Connect to your database
localhost:5100
user: pgdx
password: pgdx

If you can see a versions table under the misc schema, then you are good to go.
