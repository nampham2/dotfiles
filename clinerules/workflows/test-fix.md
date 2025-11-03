# Fix the failing tests

## Requirement:
  - You need to fix _ALL_ failing tests or **stop and let me know the source code is inconsistent*.
  - ONLY tests should be written or modified, NOT the source code
  - YOU MUST STOP and ASK if you want to modify source code
  - YOU MUST STOP and ASK if a bug in the source code is probable and you want to fix it before moving on
  - ALWAYS start with writting tests for higher level classes and then lower level classes.
  - YOU MUST follow the steps described below.
  - True object is preferred over Mock. Minimize the use of Mock as much as possible. Tests with Mock that fails should be deleted and replaced it with a solution with no Mocks when possible.
  - Using Any type is anti-pattern, try not to use it as much as possible.
  - We should minimize the number of tests while having maximal coverage.
  - Test code quality is the same as source code quality. They should be concise, modern and **must use type annotations**.
  - The final coverage should achieve at least the current coverage. No 100% coverage is needed unless explicitly asked.

## Step 1: Making sure the git-tree is clean
Check the current git branch: 
  - If the current git tree is not clean, **ask me to clean up the git tree and return to the master branch**. Repeat checking until the git is on master branch and clean.
  - If on the master branch, create a new branch with a descriptive name. Consider whether to commit current changes before proceeding.

    <ask_followup_question>
    <question>Which git branch should I create?</question>
    </ask_followup_question>

  - Check out the branch with the branch name obtained above.
  - STOP AND ASK me if we are already on a branch and the git tree is clean.

## Step 2: Read the code base
NOTE: Ask me to switch to `Act mode` before proceed.

Figure out which tests need to be fixed by running all the tests. Then read the code base, memory bank, docs to 
better understand the tests to be written, use the **sequential thinking** tool if needed.
YOU MUST stop and present to me a brief plan to fix all the tests.

## Step 3: Write the tests
YOU MUST read the `Requirement` section again and follow it strictly.
After all tests are fixed, YOU MUST stop and show me a short summary of what you did, especially your decisions
and what deviated from the plan if there are any.
