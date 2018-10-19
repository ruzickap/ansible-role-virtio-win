#!/bin/bash -eu

MOLECULE_DISTROS="centos7"

for MOLECULE_DISTRO in $MOLECULE_DISTROS; do
  echo "*** $MOLECULE_DISTRO"
  export MOLECULE_DISTRO
  molecule test
done
