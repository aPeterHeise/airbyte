#!/bin/bash

# First build the container
docker build . -t airbyte/source-example-python:dev

# Then use the following commands to run it
docker run --rm airbyte/source-example-python:dev spec
docker run --rm -v $(pwd)/secrets:/secrets airbyte/source-example-python:dev check --config /secrets/config.json
docker run --rm -v $(pwd)/secrets:/secrets airbyte/source-example-python:dev discover --config /secrets/config.json
#docker run --rm -v $(pwd)/secrets:/secrets -v $(pwd)/sample_files:/sample_files airbyte/source-example-python:dev read --config /secrets/config.json --catalog /sample_files/configured_catalog.json
