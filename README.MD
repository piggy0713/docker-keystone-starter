# README

A dockerized boilerplate project for a Keystone app.

## Requirement

You will need [Docker](https://www.docker.com/) to run this app.

## Development

First, you will need to create an `.env` so that `Docker` knows where to look for its `docker-compose.yml` file. In order to do that, run the following:

```
cp ./docker/dev.env .env
```

To run the app, run the following:

```
docker-compose up
```

You can access the keystone UI on your browser via the following url:

```
http://localhost:8080
```

**NOTE**: You can change the port via your `.env` file using the `KEYSTONE_PORT` variable.

## Deployment
In order to run the this app in Docker, you need to setup the `.env` file:

```
cp ./docker/prod.env .env
```

This `.env` needs the following variables to be set:
- `DATABASE_URL`: This boilerplate assumes you use an external Postgres service.
- `KEYSTONE_PORT`
- `SESSION_SECRET`

To run the app, run the following:

```
docker-compose up
```

## Running Migrations
For the development environment, you can migrate with the following command:
```
 docker-compose run keystone yarn migrate:dev
 ```
