#!/usr/bin/bash

set -ex

jenkins-jobs test minishift-ci-index.yaml > /dev/null
