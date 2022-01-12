# Turbo Movies

A single page movie application implemented with hotwire-turbo.

## Requirements

You will need Docker, `docker-compose` and `asdf` to install the project
dependencies and backing services.

## Getting Set Up

Setup is very simple at the moment, just install the project dependencies

```bash
asdf install
```

and then run

```bash
bin/setup
rails db:seed
```

and you're good to go!

## Testing

Running the tests is equally simple. Prefer writing system tests for new features.

```bash
rails test:all
```
