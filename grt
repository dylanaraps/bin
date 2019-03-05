#!/usr/bin/env bash
#
# Simple script to toggle github remote to/from https/git.

repo_remote="$(git remote get-url origin || exit 1)"

[[ -z $repo_remote || ! $repo_remote =~ github.com ]] && exit 1

if [[ $repo_remote =~ ^git@github ]]; then
    repo=${repo_remote/'git@github.com:'}
    repo=${repo%'.git'}
    repo=https://github.com/${repo}
else
    repo=${repo_remote/'https://github.com/'}
    repo=${repo%%.git}
    repo=git@github.com:${repo}.git
fi

printf '%s\n' "Changing repo to $repo"
git remote set-url origin "$repo"
