# Version Control - Git Standards

## Git branch name restrictions
Git imposes some basic restrictions on branch names:

Characters: Branch names can include letters, numbers, dashes (-), underscores (\_), and dots (.), but they cannot begin with a dot or end with a slash (/).
Case sensitivity: Git is case-sensitive, so Feature and feature are considered different branches.
Reserved names: Names like HEAD, FETCH\_HEAD, ORIG\_HEAD, and others are reserved by Git and cannot be used as branch names.
Length: While there's no strict limit on the length of branch names, it's practical to keep them concise to make them easier to manage.

## Git branch prefixes
Using prefixes in branch names is a popular strategy to categorize branches based on their purpose:

Feature branches: Prefixed with feature/, these branches are used to develop new features.
Bugfix branches: Prefixed with bugfix/, these branches are used to make fixes.
Release branches: Prefixed with release/, these branches prepare a codebase for new releases.
Hotfix branches: Prefixed with hotfix/, these branches address urgent issues in production.

## Git Workflow

- Commit messages MUST follow conventional commit format. Read `https://www.conventionalcommits.org/en/v1.0.0/` with Context7 tool if needed.
- If the project isn't in a git repo, STOP and ask permission to initialize one.
- YOU MUST STOP and ask how to handle uncommitted changes or untracked files when starting work.  Suggest committing existing work first.
- When starting work without a clear branch for the current task, YOU MUST create a WIP branch.
- YOU MUST TRACK All non-trivial changes in git.
- YOU MUST commit frequently throughout the development process, even if your high-level tasks are not yet done. Commit your journal entries.
- NEVER SKIP, EVADE OR DISABLE A PRE-COMMIT HOOK. If there are problems with pre-commit hooks, fix and commit again.
- NEVER use `git add -A` unless you've just done a `git status` - Don't add random test files to the repo.
- YOU MUST `--no-pager` option with git to prevent git from waiting for my input. For example: `git --no-pager log --oneline -3`
