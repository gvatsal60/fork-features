#!/bin/bash

set -e

# Import test library for `check` command
source dev-container-features-test-lib

# Check to make sure the user is vscode
check "user is vscode" whoami | grep vscode
check "version" az  --version

echo -e "\n\n🔄 Testing 'O.S'"
if cat /etc/os-release | grep -q 'PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"'; then
    echo -e "\n\n✅ Passed 'O.S is Linux 12 (bookworm)'!"
else
    echo -e "\n\n❌ Failed 'O.S is other than Linux 12 (bookworm)'!"
fi


# Report result
reportResults
