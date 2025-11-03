You will create a Pull Request on Github for the current active git branch.
- You have access to `git` and `gh` commands.
- You MUST check if the git branch is clean. STOP AND ASK me to clean it first otherwise.
- YOU MUST read all the changes in the current branch compared to main, README.md, related code and tests for more context of the changes first.
- ALWAYS use `--no-pager` with git command to avoid interactive shell session.
- YOU MUST make sure that the branch is pushed to Github befor running `gh` command.
- YOU MUST follow the rules below to prepare the PR request message.

## Rules for commit message
  - The title has to follow the conventional commit format. Read `https://www.conventionalcommits.org/en/v1.0.0/` for more information.
  - The PR body MUST HAVE LESS than 10 lines.
  - The body has to be generic and focus on high level goal of the change. AVOID having too many mundane details in the commit body.
  - For complex commit message, YOU MUST create the PR body in a markdown file under `.tmp` create the PR with that file.
  - You MUST clean the temporary file afterward.
