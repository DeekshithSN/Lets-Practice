```
git clone < https_clone_link or ssh_clone_link >
```
By using above command we clone a specific repository ( all the branches and commits will clone )

--------------------------
```
git branch 
```
This command shows list of local branches and the current branch will be suffixed with *

------------
```
git branch -a
```
List all local and remote branches 

-----------------
```
git clone -b branch_name --single-branch < https_clone_link or ssh_clone_link >
```
Above command clones the repo, with only specified branch ( all commits )

-----------

```
git clone --depth 1 -b branch_name --single-branch < https_clone_link or ssh_clone_link >
```

Above command clones the repo, with only specified branch with the latest commit only, which reduces .git folder size

-------------
```
git branch < branch_name >  
```
This command used to create new branch, once its created you need to use ``` git checkout < branch_name > ``` change the branch 

-------------
```
git checkout < branch_name >
```
used to point to another branch or change from one branch to another. 

---------------
```
git checkout -b < branch_name >
```
This creates a new branch and will be pointed newly created branch 

---------

```
git branch -d < branch_name >
```
above command is used to delete local branch in git repo

--------------

```
git push origin --delete < branch_name >
```

to delete remote branch we will use above command 

----------------

```
git branch -m < old_name > < new_branch_name >
```

above command used to modify branch name 

-----------------------
git reset : it is used to undo the committed changes.
three types of reset:
1. mixed --> git reset --mixed commit id
2. soft --> git reset --soft commit id
3. hard reset --hard commit id
------------------------------
```
