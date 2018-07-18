# Saxophone Infochart Backend

Application that provides the definition of the main pieces of a saxophone with an api.

The most important part of this project is due to its learing purpose regarding AWS ECS (Elastic Container Service).
It was necessary to learn about AWS ECS, AWS ECR, Docker, AWS LoadBalancer, AWS VPC and AWS Security Groups.

The following gist has all the instructions necessary to deploy a container on ECS, https://gist.github.com/danielSbastos/773c5ca1d7032359ce8d3263fdc6ccc4

The deploy process is automatic, once a merge on the master branch happens, CircleCI runs the tests and if everything goes okay, it builds an image, pushes it to DockerHub, creates a new taskDefinition with it and updates the service runnning this task.

- [Dependencies](#dependencies)
- [Setup](#setup)
- [Development](#development)

## Dependencies

- (if using docker) Docker
- Elixir

## Setup

```sh
mix local.hex --force
mix deps.get
```

- With docker: `docker build -t sax-back .`

## Development

### Starting the server

`mix phx.server`

- With docker: `docker run -p 4000:4000 sax-back`
