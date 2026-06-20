#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail


dnf update -y --refresh --enablerepo=updates-testing \
--exclude="grub2-common" \
--exclude="grub2-tools" \
--exclude="grub2-tools-minimal" \
--exclude="grub2-pc" \
--exclude="grub2-pc-modules" \
--exclude="grub2-efi-x64" \
--exclude="grub2-efi-ia32"