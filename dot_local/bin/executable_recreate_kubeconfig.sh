#!/usr/bin/env bash
#
# This script (re-)creates your Kubernetes kubectl config file "${HOME}/.kube/config"
# by adding "${HOME}/.kube/*.kube.yaml" paths to the KUBECONFIG variable
# and merge them into ONE "${HOME}/.kube/config".
# This makes switching between kubectl contexts faster (e.g. with k9s and kubctx).
#
# Simply run:
#
# ./recreate_kubeconfig.sh

set -e

KUBECONFIG_DIR="${HOME}/.kube"
DEFAULT_KUBECONFIG_FILE="${HOME}/.kube/config"
ADDITIONAL_KUBECONFIG_FILES="${HOME}/.kube/*.kube.yaml"
ORIGINAL=$DEFAULT_KUBECONFIG_FILE
BACKUP="${ORIGINAL}-$(date +%s)"
COLOR_GREEN="\033[0;32m"
COLOR_RED="\033[0;31m"
COLOR_RESET="\033[0m"
COLOR_YELLOW="\033[1;33m"
KUBECONFIG=""
THIS_SCRIPT="$(basename "${BASH_SOURCE[0]}")"
TMP_DIR="$(mktemp -d -t "${THIS_SCRIPT}-XXX")"

##################################
# Aiding functions
usage() {
  printf "The purpose of this script is to (re-)create a default kubeconfig file:
  %s\n
  This script merges multiple Kubernetes cluster definintions in one file
  in order to be able to switch between kubectl contexts
  with e.g. k9s or kubectx\n" "${DEFAULT_KUBECONFIG_FILE}"
}

## Highlight messages differently by preformating them
error() {
  printf "${COLOR_RED}### ERROR - %s${COLOR_RESET}\n" "${1}"
  exit 1
}

warning() {
  printf "${COLOR_YELLOW}### WARNING - %s${COLOR_RESET}\n" "${1}"
}

info() {
  printf "### INFO - %s${COLOR_RESET}\n" "${1}"
}

success() {
  printf "${COLOR_GREEN}### SUCCESS - %s${COLOR_RESET}\n" "${1}"
}

## Work in a temporary directory, which gets deleted by clean_up after trap strikes
trap 'clean_up "${TMP_DIR}"' EXIT
clean_up() {
  [[ -d "${TMP_DIR}" ]] && rm -rf "${TMP_DIR}"
}
################################

################################
# Check requirements
################################
## "${HOME}/.kube/" exists?
if [[ ! -d "${KUBECONFIG_DIR}" ]]; then
  warning "You do not seem to have a '${KUBECONFIG_DIR}' directory"
  info 'Creating one for you.'
  mkdir "${KUBECONFIG_DIR}"
fi

## Files matching "${HOME}/.kube/*.kube.yaml" exists?
## Autocomplete "${HOME}/.kube/*.kube.yaml" filenames using compgen
if ! ( compgen -G "${ADDITIONAL_KUBECONFIG_FILES}" >/dev/null 2>&1 ); then
  usage
  error "You do not seem to have additional kubeconfig files
  matching '~/.kube/*.kube.yaml' pattern. Nothing to do here. Exiting"
fi

## Print which files this script found
info "kubeconfig files found:"
for kube_yaml in $ADDITIONAL_KUBECONFIG_FILES; do
  printf "%s\n" "${kube_yaml}"
done

## Loops through "${HOME}/.kube/*.kube.yaml" and
## Adds a new path to KUBECONFIG variable on each iteration
info "Capture kubeconfig files into variable KUBECONFIG"
for kube_yaml in $ADDITIONAL_KUBECONFIG_FILES; do
  KUBECONFIG=$KUBECONFIG:$kube_yaml
done

## Print the current value of the KUBECONFIG variable
info "Variable KUBECONFIG contains: '${KUBECONFIG}'"

## Prompt user to proceed.
warning "You want me now to create '${DEFAULT_KUBECONFIG_FILE}'?
If a '${DEFAULT_KUBECONFIG_FILE}' file already exists,
I will create a copy: '${BACKUP}'"

if [[ -f "${ORIGINAL}" ]]; then
  info "Create a copy of '${DEFAULT_KUBECONFIG_FILE}'"
  cp -v "${ORIGINAL}" "${BACKUP}"
else
  touch "${ORIGINAL}"
fi

info "Create a new '${DEFAULT_KUBECONFIG_FILE}'"
export KUBECONFIG
kubectl config view --merge --flatten > "${DEFAULT_KUBECONFIG_FILE}"

if ( chmod 0600 "${DEFAULT_KUBECONFIG_FILE}" && ls "${DEFAULT_KUBECONFIG_FILE}" ); then
  success "'${DEFAULT_KUBECONFIG_FILE}' created"
fi

KUBECONFIG=$DEFAULT_KUBECONFIG_FILE
export KUBECONFIG
info "Show Kubernetes clusters"
kubectl config --kubeconfig "${DEFAULT_KUBECONFIG_FILE}" get-clusters

info "Show Kubernetes contexts"
kubectl config --kubeconfig "${DEFAULT_KUBECONFIG_FILE}" get-contexts

success "My work is done".
