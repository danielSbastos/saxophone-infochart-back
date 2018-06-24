# Saxophone Infochart Backend

Application that provides the definition of the main pieces of a saxophone with an api.

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
