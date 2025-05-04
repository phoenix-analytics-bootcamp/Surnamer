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


# SQL
In this section, we will be talking about SQL. Beyond meaning Structured Query Language, SQL is a backbone of Analytics Engineering. For this project, we will not go into details of installing dbeaver, the defacto database management tool that allows us to  manage different types of relational databases. This document might focus on that in future. 

You can download and install the community version of dbeaver through the link: https://dbeaver.io/download/
Once installed, connect to postgreSQL database using the credentials supplied by the instructor
Test your connection and install any dependencies.
Navigate to your schema an start writing your codess

This documentation will include instructions for creating and working on a schema. 

Let's get started!!!

## Data Definition Language
This are operations that are used to define and manage the straucture of database objects  
It includes operations such as CREATE, TRUNCATE, ALTER, DROP  

CREATE: To add a new object to the database  
ALTER: To change the structure of the database  
DROP: To remove an existing object from the database. Check out our guide on how to delete a column in SQL  
TRUNCATE: To remove all records from a table, including the space allocated to store this data  

Some DDL commands are highy destructive and should be used with caution. You will most likely ot use DDL commands often in your daily work as analytics engineer. Should you worry about them? Maybe Yes!.

Some database engines have specfic DDL commands relevant to them. Example is COMMENT in postgreSQL and RENAME in MYSQL

summary:

DDL commands allow us to change the database structure and not the data. Some may be destructive and should be used with care.

Now let's look at commands that change the data in a database.

## Data Manipulation Language  
DML (Data Manipulation Language): Commands like INSERT, UPDATE, and DELETE to manipulate data within the database.