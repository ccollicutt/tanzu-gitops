#! /usr/bin/env bash

set -euo pipefail

VERB=$1

fluxctl install \
--git-email=flux@lab.home \
--git-url=https://github.com/techgnosis/k8s-petclinic \
--git-readonly \
--git-path="." \
--namespace=petclinic | kubectl $VERB -f -
