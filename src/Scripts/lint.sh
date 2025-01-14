#!/bin/bash

if command -v swiftlint >/dev/null 2>&1
then
    swiftlint
else
    echo "warning: `swiftlint` command not found - See https://github.com/realm/SwiftLint#installation for installation instructions."
fi
