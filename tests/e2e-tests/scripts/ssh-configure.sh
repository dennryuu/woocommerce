#!/usr/bin/env bash
set -x

# Import the encrypted SSH key
openssl aes-256-cbc -K $encrypted_aa1eba18da39_key -iv $encrypted_aa1eba18da39_iv -in tests/e2e-tests/scripts/deploy-key.enc -out deploy-key -d
echo decrypted
chmod 600 deploy-key
echo chmodded
mkdir ~/.ssh
echo directory created
mv deploy-key ~/.ssh/id_rsa
echo key moved