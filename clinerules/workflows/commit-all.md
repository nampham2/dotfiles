I'd like to commit all the changes in the current active git branch.
- YOU MUST read all the changes, README.md, related code and tests for more context of the changes first.
- YOU MUST follow the rules below to prepare the commit message.
- After having the commit message, YOU MUST STOP and show me the complete message and ask me for the permission to commit.
- NEVER execute `git push` after the commit unless explicitly asked.
- ALWAYS use `--no-pager` with git command to avoid interactive shell session.

## Rules for commit message
  - The commit message has to follow the conventional commit format. Read `https://www.conventionalcommits.org/en/v1.0.0/` for more information.
  - The commit mesage MUST HAVE LESS than 10 lines.
  - The body of the commit message has to be generic and focus on high level goal of the change. AVOID having too many mundane details in the commit body.
  - For complex commit message, YOU MUST create the commit body in a text file under `.tmp` and commit with the `--file` flag.
  - You MUST clean the temporary file afterward.
