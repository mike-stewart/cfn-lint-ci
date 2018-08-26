#!/bin/bash

lint()
{
	echo "Testing '$1'..."
	(cfn-lint validate "$1")
}

# Test all JSON or YAML files excluding dotfiles
export -f lint
find . -maxdepth 6 -regextype posix-egrep -regex ".*/[^\.][^/]*\.(json|ya?ml)" -type f -print0 | xargs -0 -n1 bash -c 'lint "$0"'
