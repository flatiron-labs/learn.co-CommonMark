# Git Basics

## Objectives

1. Test your understanding of basic git repo commands
2. Review git concepts

???

# Basic Git Quiz

?: Which of the following is the correct way to initialize a new Git repository?

( ) `git add .`
(X) `git init`
( ) `git commit`

?: You can type git status at any point while in a git controlled directory to check the status of your files.

(X) True
( ) False

?: Which of the following commands will stage your entire directory and every non-empty directory inside your current directory?

( ) `git status all`
(X) `git add .`
( ) `git commit all`

?: We've just created a new file called `index.html`. Which of the following commands will stage this one file so we can commit it?

(X) `git add index.html`
( ) `git add new`
( ) `git commit index.html`

?: When you run `git status`, it returns:

```bash
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

  new file:   index.html
```

How would you commit this with the message "adding new authors to index"?

(X) `git commit -m "adding new authors to index"`
( ) `git commit "adding new authors to index"`
( ) `git commit .`

?: Below are several `git commit` commands. Some are valid, some aren't. Select the valid commands.

[ ] `git commit all`
[X] `git commit -am 'remove unused files'`
[X] `git commit -m 'cleanup syntax errors'`
[X] `git commit -a -m 'added new benchmarks'`

???

## More resources:

* [Pro Git](http://git-scm.com/book/) - [1.1 Getting Started - About Version Control](http://git-scm.com/book/en/Getting-Started-About-Version-Control)
* [Pro Git](http://git-scm.com/book/) - [2.1 Git Basics - Getting a Git Repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository)
* [Pro Git](http://git-scm.com/book/) - [2.2 Git Basics - Recording Changes to the Repository](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository)
* [LearnGitBranching](http://pcottle.github.io/learnGitBranching/) - [Introduction Sequence: Introduction to Git Commits](http://pcottle.github.io/learnGitBranching/)


<a href='https://learn.co/lessons/git-basics-quiz' data-visibility='hidden'>View this lesson on Learn.co</a>
