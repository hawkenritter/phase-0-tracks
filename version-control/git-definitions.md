# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a built-in system that records the changes made to certain files by creating different versions. This allows programmers to work on the same program all at once while merging different features or software updates into the 'master' branch and jumping back to previous versions if there is a problem.

* What is a branch and why would you use one?
A branch is a copy or duplication of the master file allowing developers to work parallel to the master file. Can be a lifesaver in the case of some sort of bug in the system because you can easily track when that bug came into play and how to go about fixing it.

* What is a commit? What makes a good commit message?
A commit is basically "committing" the changes you have made to a file to the actual project history. It follows the git add command which stages the changes for commitment. A good commit message is one that describes the changes and updates that have been made to the committed file so that other programmers can understand what has happened

* What is a merge conflict?
Say I am working on a project with another person, and we both create a new branch. A merge conflict occurs when we both happen to change the same item in the same file. For example Programmer #1 might change the title to the README.md file at the same time that Programmer #2 changes the title. Git won't know what to keep or delete and will flash a merge conflict.