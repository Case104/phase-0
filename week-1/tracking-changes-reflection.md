## How does tracking and adding changes make developers' lives easier?
It allows you to figure out what the developer's thought process was.

## What is a commit?
A change made, and a way to return to previous changes.

## What are the best practices for commit messages?
Commit messages should use present tense verbiage as well as be descriptive.

## What does the HEAD^ argument mean?
HEAD^ means the previous commit.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?
First a change is made onto a new branch.
Second that change is added to the queue to be pushed.
Third the change is merged into the master branch, via pull request.

## Write a handy cheatsheet of the commands you need to commit your changes?

git status
git branch
git pull

git checkout -b new-branch-here
git add branch-to-add
git commit -v//-m

Always merge from master to branch
git merge master
git push origin feature-branch-name

## What is a pull request and how do you create and merge one?
A pull request is a request for you to add the new code from the branch, into the amster. You follow the prompts at GitHub.

## Why are pull requests preferred when working with teams?
To allow a second set of eyes to see the code and approve it before making it the master.