#!/bin/sh

for script in scripts/*.sh; do
    if [ -f "$script" ]; then
        sh "../$script"
    fi
done

cp -r rice-in/. ricing
chown -R $(stat -c %U:%G ricing) ricing