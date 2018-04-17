#!/usr/bin/bash

set -ex

yum -y update
yum -y install epel-release
yum -y install python-pip
# Install jenkins-jobs
pip install --user jenkins-job-builder
# Pip install jenkins-jobs binary into $HOME/.local/bin
export PATH=$HOME/.local/bin:$PATH
jenkins-jobs test minishift-ci-index.yaml > /dev/null
