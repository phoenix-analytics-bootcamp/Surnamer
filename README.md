# Analytics Engineering
 Welcome to the  Analytics Engineering course. This repository contains some of the important information and codes that may come in handy in learning this course. This file contains information about git, sql and DBT. Verify all codes and customize them to your dataset

## git
git is a version control system. It allows teams to collaborate on tasks thereby driving efficiency and preventing data loss due to discentralized system. git is also known as a source code management system because it allows teams to store source codes of their works in a centrall location and build security around it to prevent corruption.

For example, controls can be built around updating the base code only after it has been reviewed and approved by appropriate personnel. For information about git such as the basic concept: working directory, staging an d.git directory, please check the following link: https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F

To install git: Use your preferred OS and install the corresponding software:
linux: https://git-scm.com/download/linux. 
mac: https://git-scm.com/download/mac.
Windows: https://git-scm.com/download/win


Initial SetUp
Post Installation, you must perform initial configuration of your git platform by configuring your identity
Open your terminal, validate that you have git installed by running:
$ git --version. You should see an output that details the version of the git software installed

Create a directory for your project and navigate to it. 
Open the terminal on the directory and...
Next: setup your identity 
$ git config --global user.name "Ahmed Elenu"
$ git config --global user.email ologogoro@dataguy.com

Next Initialize git on the directory to turn it into a git directory...why?
The reason is such that git can then track changes to the files in the directory going forward!

### Operations in Git
There are a few operations that would come in handy while working as an analytical Engineer. We have identified 6 of them. There are more anyways but you may have to be familiar with this few:
1. git clone URL: Allows you to clone a repository so that you can have all the online files locally on your PC
 Example: git clone https://github.com/phoenix-analytics-bootcamp/this-is-a-sample-repo.git

2. git checkout -b sample: allows you to create a branch called sample so that you can make modification to it
   git switch -c sample: allows you to create a branch called sample so that you can make modification to it

   git checkout sample/ git switch sample: allows you to switch into the sample branch 

3. git status: used to know the current working branch and to see if changes have been made into any files in the branch.
Any file that has been modified will have its name in red

4. git add . : Used to add all the files in a git directory to be staged for commit 
   git add file.txt: used to add a specific file called file.txt to be staged in readiness for commit

5. Git commit -m "description": Once a file has been staged, it is commited. Ensure to put a description on the commit

6. Git push: sends the commited changes into the online platform
Note: if you push for the first time especially on a newly created branch, you receive a notification to run the command:  
            git push --set-upstream origin branch_name

7. git pull: As you will not be working direcly on the main branch online, you will be required to pull the most current file from github to your local directory; use git pull

Other operations exits such as git rebase, pull request, merging etc

Pull request allows you to get reviewers to validate yourwork before you merge into the main branch. NEVER MERGE CODE CHNAGES INTO MAIN BRANCH WITHOUT EXTENSIVE REVIEW BECAUSE ONCE MERGED, THERE IS NO EASY GOING BACK IF THERE IS NO BACKUP

Happy Git-"ing"!!!

