#!/bin/bash
#
# Bitnami Spring Cloud Skipper entrypoint

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purpose

# Load libraries
. /opt/bitnami/scripts/libbitnami.sh
. /opt/bitnami/scripts/libspringcloudskipper.sh

# Load Spring Cloud Skipper environment variables
. /opt/bitnami/scripts/spring-cloud-skipper-env.sh

print_welcome_page

if [[ "$*" = *"/opt/bitnami/scripts/spring-cloud-skipper/run.sh"* || "$*" = "/run.sh" ]]; then
    info "** Starting Spring Cloud Skipper setup **"
    /opt/bitnami/scripts/spring-cloud-skipper/setup.sh
    info "** Spring Cloud Skipper setup finished! **"
fi

echo ""
exec "$@"
