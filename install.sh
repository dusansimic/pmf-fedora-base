#!/bin/sh

sudo dnf install -yq ansible

TARGET="$1"

case "$TARGET" in
	vm)
		ansible-playbook -i localhost, -c local -t base,devel main.yaml
		;;
	metal)
		ansible-playbook -i localhost, -c local main.yaml
		;;
	*)
		echo Invalid target
		;;
esac
