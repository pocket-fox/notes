#import "/templates/permanent.typ": *
#show: style

= Git Quiz Review

#enum(
  tight: false,
  
  [*git \--version* #check()\
  Returns the current git version to stdout.],
  
  [*git version* #check()\
  Returns the current git version to stdout.],
  
  [*git \--help* #check()\
  Returns the help page for the base git command to stdout.],
  
  [*git help* #check()\
  Returns the help page for the base git command to stdout.],
  
  [*git help -a* #check() #h(1em)#text(gray)[(list of all commands)]\
  Opens a list of all available git sub-commands in a pager.],
  
  [*git merge* #check() #h(1em)#text(gray)[(help on only the one command)]\
  Opens the help page for particular git sub-command in a pager.],
  
  [*git config \--global user.name "iraj"* #check()\
  Sets the specified config setting for the global scope to the specified value.],
  
  [*git config \--global user.email "iraj\@yo.com"* #check()\
  Sets the specified config setting for the global scope to the specified value.],
  
  [*git init play* #check()\
  Creates a new directory name 'play' and initializies a local git repository within it.],
  
  [*git add .* #check()\
  Recursively stage all changes in the current directory.],
  
  [*git status* #check()\
  Return the difference between your working local files and the current tracked repo to stdout.],
  
  [*git status -s* #check()\
  Shows the git status in an abbreviated format.],
  
  [*git show :a* #check()\
  Shows the currently tracked version of file 'a'.],
  
  [*git ls-files* #check()\
  Recursively list tracked files in the current directory.],
  
  [*git rm file \--cached* #check()\
  Removes 'file' from staging.],
  
  [*git mv file newName* #check()\
  Renames 'file' to 'newName'.],
  
  [*git checkout file* #check()\
  Replaces 'file' in working tree with 'file' from staging.],
  
  [*git commit -m "comment"* #check()\
  Commits currently staged changes to the working branch with "comment" as the cmmit summary.],
  
  [*git show HEAD~0:file* #check()\
  Show the contents of 'file' on HEAD~0 (the most up to date HEAD).],
  
  [*git log* #cross()\
  Show commit history.],
  
  [*git log \--oneline* #check()\
  Show abbreviated commit history.],
  
  [*git diff* #cross()\
  Show all differences between working tree and staging.],
  
  [*git diff \--staged* #cross()\
  Show all differences between staging and a target branch; however, the default target is the current HEAD. \
  (technically \--staged is an alias for \--cached).],
  
  [*git diff \--cached* #check()\
  Show all differences between staging and a target branch; however, the default target is the current HEAD.],
  
  [*git diff HEAD~0* #check()\
  Shows differences between working tree and current HEAD.],
  
  [*git reset \--soft HEAD\~2* #cross()\
  Revert state of HEAD to HEAD\~2 (2 commits prior), retaining all differences between the current working tree and HEAD\~2 within staging.],
  
  [*git reset \--mixed HEAD\~2* #cross()\
  Revert the state of HEAD to HEAD\~2 (2 commits prior), retaining all differences between the current working tree and HEAD\~2 solely within the working tree.],
  
  [*git reset \--hard HEAD\~2* #cross()\
  Revert the state of HEAD to HEAD\~2 (2 commits prior), retaining no changes, thus resulting in the current working tree mirroring HEAD\~2.],
    
  [*git branch f1* #check()\
  Create a new branch named 'f1'.],
  
  [*git switch f1* #cross()\
  Switch to branch 'f1'.],
    
  [*git checkout -b f1* #check()\
  Create a new branch named 'f1' and then switch to it.],
  
  [*git show f1:one* #check()\
  Shows the state of the file named 'one' on branch 'f1'.],
  
  [*git show HEAD~0:one* #check()\
  Shows the state of the file 'one' on the current HEAD.],
  
  [*git stash list* #check()\
  List the commits present the stash.],
  
  [*git stash save* #check()\
  Push the current batch of commits to a temporary storage and revert the working tree to the current state of HEAD.],
  
  [*git stash apply* #check()\
  Replays all stashed commits on top of the current working tree.],
  
  [*git stash pop* #cross()\
  Replays a single stashed commit on top of the working tree and removes that commit from the stash.],
  
  [*git merge f1* #cross()\
  Attempts to play all commits from branch 'f1' onto master branch.],
  
  [*git merge \--squash f1* #cross()\
  Combine all commits made to branch 'f1' into a single commit.],
  
  [*git rebase master* #check()\
  Point the root of the working tree at the current HEAD of master. Then replay all commits on top of the new HEAD as if merging.],
  
  [*git rebase \--continue* #check()\
  Resume playing commits on top of the new root HEAD after having resolved merge conflicts.],
  
  [*ssh-keygen -t rsa -b 4096 -C "sabevary\@csus.edu"* #check()\
  Generate a new 4096 bit ssh key using the rsa protocol and associate with it a comment that reads 'sabevary\@csus.edu'.],
  
  [*eval "\$(ssh-agent -s)"* #cross()\
  Evaluate the output of 'ssh-agent -s' as if it were put into stdin. The output of 'ssh-agent -s' is a series of bourne shell commands that would set the ssh auth socket and pid.],
  
  [*ssh-add ~/.ssh/csus* #check()\
  Add a private key to your ssh-agents keyring.],
  
  [*ssh-add -l* #check()\
  List private keys contained on your ssh-agents keyring.],
  
  [*git clone \<name of repository from github\>* #check()\
  Download a copy of a repository present at the provided location.],
  
  [*git remote -v* #cross()\
  List repositories associated with commands, i.e. what repository will git pull from be pulling from by default and git push will push to by default.],
  
  [*git remote rename origin csus* #check()\
  Rename the repo named 'origin' to 'csus'.],
  
  [*git push -u csus f1* #cross()\
  Set the remote repo to push to for the 'f1' branch as the remote named 'csus'.],
  
  [*git log csus/main \--oneline* #check()\
  Show the commit history for the 'main' branch of the 'csus' repo.],
  
  [*git show csus/main:file* #check()\
  Show the contents of 'file' as it is on 'main' branch of the 'csus' repo.],
  
  [*git fetch csus* #check()\
  Download a preview of the current state of the remote named 'csus'.],
  
  [*git merge csus/main* #cross()\
  Attempt to replay all commits from the working tree onto the 'main' branch of the 'csus' repo. Halt when encountering a merge conflict.],
  
  [*git pull csus main* #cross()\
  Pull any changes from 'main' branch of 'csus' repo.],
  
)
