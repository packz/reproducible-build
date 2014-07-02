#!/bin/sh

set -e

test $# -eq 2 || {
	echo "usage $0 <project> <output>"
	exit 1
}

project_dir="$1"
output_dir="$2"

cd "${project_dir}" && DEB_BUILD_TIMESTAMP=0 dpkg-buildpackage && mv ../hello_2.9-1_amd64.* ../"${output_dir}" && cd -
