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
  
  [*git status -status* #cross()\
  ???],
  
  [*git show :a*\
  ],
  
  [*git ls-files*\
  ],
  
  [*git rm file \--cached*\
  ],
  
  [*git mv file newName*\
  ],
  
  [*git checkout file*\
  ],
  
  [*git commit -m "comment"*\
  ],
  
  [*git show HEAD~0:file*\
  ],
  
  [*git log*\
  ],
  
  [*git log \--oneline*\
  ],
  
  [*git diff*\
  ],
  
  [*git diff \--staged*\
  ],
  
  [*git diff \--cached*\
  ],
  
  [*git diff HEAD~0*\
  ],
  
  [*git reset \--soft HEAD~2*\
  ],
  
  [*git reset \--mixed HEAD~2*\
  ],
  
  [*git reset ~~hard HEAD~2*\
  ],
  
  [*git branch f1*\
  ],
  
  [*git switch f1*\
  ],
  
  [*git checkout -b f1*\
  ],
  
  [*git show f1:one*\
  ],
  
  [*git show HEAD~0:one*\
  ],
  
  [*git stash list*\
  ],
  
  [*git stash save*\
  ],
  
  [*git stash apply*\
  ],
  
  [*git stash pop*\
  ],
  
  [*git merge f1*\
  ],
  
  [*git merge \--squash f1*\
  ],
  
  [*git rebase master*\
  ],
  
  [*git rebase \--continue*\
  ],
  
  [*ssh-keygen -t rsa -b 4096 -C "sabevary\@csus.edu"*\
  ],
  
  [*eval "\$(ssh-agent -s)"	*\
  ],
  
  [*ssh-add ~/.ssh/csus*\
  ],
  
  [*ssh-add -l*\
  ],
  
  [*git clone name of repository from github*\
  ],
  
  [*git remote -v*\
  ],
  
  [*git remote rename origin csus*\
  ],
  
  [*git push -u csus f1*\
  ],
  
  [*git log csus/main \--oneline*\
  ],
  
  [*git show csus/main:file*\
  ],
  
  [*git fetch csus*\
  ],
  
  [*git merge csus/main*\
  ],
  
  [*git pull csus mai,*\
  ],
  
)
