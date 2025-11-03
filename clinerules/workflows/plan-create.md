# Implementation Plan Creation

## Rules:
  - Your task is to write a detailed and clear plan to a document so it can be implemented correctly.
  - You SHOULD NEVER implement these tasks, an engineer will do it properly.

Create a concrete implementation plan.

## Step 1: Determine Plan Version
Please use your best effort and git commands to identify the latest plan version in the current branch.
Plans are typically in markdown files recently changed in the git branch.
Choose whether to create a new version or revise the latest one.

<ask_followup_question>
<question>What version of the plan should I write?</question>
</ask_followup_question>

### Step 2: Making sure the git-tree is clean
Check the current git branch: 
  - If the current git tree is not clean, **ask me to clean up the git tree and return to the master branch**. Repeat checking until the git is on master branch and clean.
  - If on the master branch, create a new branch with a descriptive name. Consider whether to commit current changes before proceeding.

    <ask_followup_question>
    <question>Which git branch should I create?</question>
    </ask_followup_question>

  - Check out the branch with the branch name obtained above.

## Step 3: Write Comprehensive Plan
Requirements:
- DO NOT modify other files rather than the plan documentation
- You MUST FOLLOW principles: DRY, YAGNI, TDD
- Assume the engineer has no context about the codebase
- Document all necessary information: files to modify, code samples, testing approach, and relevant documentation
- Structure tasks in groups of 3-5 for batch implementation
- Tasks MUST follow TDD principles
- Task groups MUST have no errors and linting issues and comittable without pre-commit check and pytest problems.
- YOU MUST commit after implementing a task group, all tests and pre-commit checks MUST pass before commiting
- The final step MUST be a verification step with pre-commit and pytest

The plan should guide a skilled developer who lacks domain knowledge through bite-sized, well-defined tasks.

Write a detailed implementation plan in docs/plans/ using the version from Step 1.

### Step 4: Making the first commit with git
- Check in in the plan written in the previous step and commit with a conventional commit format.
