# vantage-orchestrate is the parent orchestration repo that manages git submodules for vantage

## Add submodule
`git submodule add https://github.com/amhmusic/vantage-db.git services/vantage-db`
`git submodule add https://github.com/amhmusic/vantage-api.git services/vantage-api`

## Clone
`git submodule update --init --recursive`

## Build
`git submodule update --remote --recursive`
`git add services/vantage-db`
`git add services/vantage-api`
`git commit -m "update submodules"`
`docker compose up --build`

## Run
`docker compose up`