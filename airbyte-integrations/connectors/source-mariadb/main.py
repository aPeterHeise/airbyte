#
# Copyright (c) 2021 Airbyte, Inc., all rights reserved.
#


import sys

from airbyte_cdk.entrypoint import launch
from source_mariadb import SourceMariadb

if __name__ == "__main__":
    source = SourceMariadb()
    launch(source, sys.argv[1:])
