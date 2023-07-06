#!/bin/sh -l

set -eu

if ! [ -z "$REPO_PATH" ]
then
      cd "$REPO_PATH"
fi
echo "$GIT_CRYPT_KEY" | base64  -d > ./git-crypt-key

git-crypt unlock ./git-crypt-key

rm ./git-crypt-key
