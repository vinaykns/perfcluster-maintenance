#!/usr/bin/env bash

set -xe

export newvalue='"my_new_registry_token"'
export oldvalue=$(cat /var/lib/origin/.docker/config.json | jq .'auths["registry.reg-aws.openshift.com:443"]["auth"]')
sed -i -e s/$oldvalue/$newvalue/ /var/lib/origin/.docker/config.json
export dupnewvalue=$(cat /var/lib/origin/.docker/config.json | jq .'auths["registry.reg-aws.openshift.com:443"]["auth"]')
if [[ $newvalue == $dupnewvalue  ]]; then
        echo "success"
fi
