# CommitEmailFixer

# Git Email Update Script Documentation

## Overview
This script allows you to update the committer and author email addresses in your Git repository's history. It's useful when you need to change an old email address to a new one across all commits in your repository.

## Prerequisites
- Git installed on your system
- Access to the repository you want to modify
- Backup of your repository (IMPORTANT!)

## How to Use

1. **Create a Backup**
   Before running this script, create a backup of your repository:
   ```bash
   cp -r your-repo your-repo-backup
   ```

2. **Modify the Script**
   - Replace `old-email@email.com` with the email address you want to change
   - Replace `new-email@email.com` with your new email address

3. **Run the Script**
   - Navigate to your repository directory
   - Copy the script into a text editor
   - Save it with a `.sh` extension (e.g., `update-email.sh`)
   - Make it executable: `chmod +x update-email.sh`
   - Run the script: `./update-email.sh`

## Script Components Explained
- `--force`: Overwrites the existing backup of refs if it exists
- `--env-filter`: Modifies environment variables for each commit
- `GIT_COMMITTER_EMAIL`: The email of the person who committed the code
- `GIT_AUTHOR_EMAIL`: The email of the person who authored the code
- `--tag-name-filter cat`: Preserves existing tags
- `--branches --tags`: Processes all branches and tags

## Important Notes
1. This operation rewrites your Git history. Use with caution!
2. If you've already pushed your repository, you'll need to force push after running this script
3. All collaborators will need to rebase their work on your new history
4. This change is permanent and cannot be undone (except by restoring from backup)

## Force Push After Changes
After running the script, you'll need to force push your changes:
```bash
git push --force --all
git push --force --tags
```

## Troubleshooting
If you encounter issues:
1. Restore from your backup
2. Verify the old email address is correct
3. Ensure you have necessary permissions
4. Check for any error messages in the output

## Safety Warnings
- Always create a backup before running this script
- Inform all collaborators before modifying shared repository history
- Be extremely careful with force pushing to shared repositories
- Consider the impact on open pull requests and branches

## Additional Resources
- Git documentation on filter-branch: https://git-scm.com/docs/git-filter-branch
- Git documentation on rewriting history: https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History