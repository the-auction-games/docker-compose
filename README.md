# Docker Compose Deployment
This repository provides the configuration to deploy TheAuctionGames in docker containers.

## Deployment
Please execute the `./setup` script to clone the necessary microservice repositories.  
After the setup is complete, execute `docker compose up -d` to deploy the application.  

## Web Application
Once deployed, the application is available at `http://localhost:2019`.

## Cleanup
Please execute `docker compose down` to shut down and remove all Docker containers.  
Then, execute the `cleanup.sh` script to delete the microservice repositories.  

## Extras
If you want to implement the daily backups with the DropBox API, please set the following environment variables before composing the containers:

- DROP_BOX_CLIENT_ID (DropBox App Key)
- DROP_BOX_CLIENT_SECRET (DropBox App Secret)
- DROP_BOX_REFRESH_TOKEN (Obtained through the `/oath2/token` endpoint. See link below.)

For more information about using the DropBox API, please visit https://www.dropbox.com/developers/reference/getting-started.
