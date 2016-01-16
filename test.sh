#! /bin/bash
docker run --rm -i -v `pwd`/assets/etc:/coldsweat/etc -v `pwd`/assets/data:/data robinthrift/coldsweat
