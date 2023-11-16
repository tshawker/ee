#! /usr/bin/env bash
#
WHERE=~/actions-runner

cd "${WHERE}"

# Configure the runner
# Token supplied by GitHub example.
# four inputs:  runner group, runner name, extra labels, and work directory
./config.sh --url https://github.com/tshawker/ee --token AMDR5QKQPZV76R3K6PETSZ3FKY3PO <<.EOF
Default
${HOST}-runner

_work
.EOF

