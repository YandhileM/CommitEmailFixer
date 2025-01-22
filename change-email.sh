git filter-branch --force --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "old-email@email.com" ]
then
    export GIT_COMMITTER_EMAIL="new-email@email.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "old-email@email.com" ]
then
    export GIT_AUTHOR_EMAIL="new-email@email.com"
fi
' --tag-name-filter cat -- --branches --tags