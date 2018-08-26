# cfn-lint-ci

A script to run [martysweet/cfn-lint](https://github.com/martysweet/cfn-lint) on an arbitrary number of CloudFormation templates in a CI build.

## Usage

Import the script into your build. 

Executing it will test all JSON and YAML files with cfn-validate, excluding dotfiles. Any failures will result in a non-zero exit code.
