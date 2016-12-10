#!/usr/bin/env bash
echo "--------------------------testing role by vagrant"
vagrant up --provision


# destroy vms after tests pass
read -t 3 -rep "will you like to destroy vms created by vagrant to save resources?[default: no, enter 'y' or 'yes' to confirm]
" is_destroy

if [ "$is_destroy" == "y" ] || [  "$is_destroy" == "yes" ]; then
    echo "--------------------------destroy vagrant vms"
    vagrant destroy -f

    echo "--------------------------make sure vms destroyed"
    vagrant status
else
    echo "remain vms"
fi
