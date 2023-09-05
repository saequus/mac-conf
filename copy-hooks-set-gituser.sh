#!/bin/bash

read -p "Where is project located: " LOCATION

# Take the GitHub email
read -p "Enter your GitHub email: " USER_EMAIL

if [ -n "$USER_EMAIL" ] && [ -n "$LOCATION" ]; then
  cp -rf ./githooks/hooks/* $LOCATION/.git/hooks/
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/applypatch-msg
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/commit-msg
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/post-update
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-applypatch
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-commit
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-merge-commit
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-push
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-rebase
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/pre-receive
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/prepare-commit-msg
  sed -i -e "s/TO_REPLACE/$USER_EMAIL/gi" $LOCATION/.git/hooks/update
  chmod +x  $LOCATION/.git/hooks/
fi

