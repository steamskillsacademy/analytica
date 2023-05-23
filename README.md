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

## Folder structure and naming conventions
All folder and file names should be 
- in __camelCase__.
- singular and __NOT__ plural.

`analytica/` is the root of the project.
It contains a `makefile` that contains the necessary commands for starting the docker containers and other related tasks.

`database/`, `dataWarehouse/` and `visualizer/` are the project's components. 
Each of them contains a `makefile` that contains the commands for connecting to its respective docker container and performing related tasks.
- analytica/
  - database/
    - .docker/
    - .snippet/
    - env.runtime/
    - src/
    - makefile
  - dataWarehouse/
    - makefile
  - visualizer/
    - makefile
  - .compose.local.yml
  - makefile

`env.runtime/` is the folder that contains the environment variables. 
We will have `local.sh`, `test.sh`, `prod.sh`. 

The organization of the `src/` folder structure might be challenging, but we can address it when the time comes. As a general rule:
- Place related files together in the same location.
- Keep folders and files at the lowest possible level.

We will use trailing slash for folders and no trailing slash for files. e.g.:
- `src/`
- `src/main.py`
- `http://localhost:5100/`
- `http://localhost:5100/index.html`

## Environments
We will have three environments
- local
- test
- prod

## Git Branches
We will use feature branches. Name them accordingly:
- feat: (new feature for the user, not a new feature for build script)
- fix: (bug fix for the user, not a fix to a build script)
- doc: (changes to the documentation)
- refactor: (refactoring production code, eg. renaming a variable)
- test: (adding missing tests, refactoring tests; no production code change)
- chore: (updating grunt tasks etc; no production code change)

We will use kabab-case for branch names. e.g.:
- `feat/some-feature`
In general, names will be a part of a URL should be in kabab-case.

## Git Commit Messages
We will use [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).
No need to provide excessive details. Typically, a concise format like `<type>: <description>` is sufficient.
