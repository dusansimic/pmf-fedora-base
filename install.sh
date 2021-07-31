#!/bin/sh

sudo dnf install -y ansible

ansible-playbook -i localhost, -c local main.yaml
