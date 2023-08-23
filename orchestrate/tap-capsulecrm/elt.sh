#!/bin/bash

# exit on error
set -e

# install dbt dependencies
meltano install

meltano run tap-capsulecrm "$LOADER" dbt:deps dbt:snapshot dbt:run
