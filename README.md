### Welcome to the  Analytics Engineering course. This repository contains some of the important information and codes that may come in handy in learning this course. This file contains information about git, sql and DBT. Verify all codes and customize them to your dataset

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

# Operations in Git
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


create table omolola.phone_book (
id int,
friend_name varchar(60),
phone_number varchar(15),
date_added  date,
location  varchar(20)
);


insert into omolola.phone_book
(id, friend_name, phone_number, date_added, location)
values(5, 'peju', '80987345378', '2023-11-22', 'Germany')


select *
from omolola.phone_book


update omolola.phone_book
set phone_number = '7602369562'
where id  = 2



update pelebe.pay_phonebook
set location = 'Evry'
where id_friend = 1


-- Filter using `equals to` = 
select *
from omolola.phone_book
where location = 'Germany';

-- Filter using greater than and less than `<` or `>`
select * from sample_schema.customers
where customer_id < 11;

select * from sample_schema.customers
where date(created_at) <= '2024-06-24';


-- negation  - not equls to `!=`, `<>`



-- conditional logic and filter  `and` and `or`
select *
from omolola.phone_book
where location = 'Nice'
or date(date_added) = '2024-11-22'
or 




select * from sample_schema.customers
where customer_id = 158;
select * from sample_schema.orders
where customer_id = 158;
select * from sample_schema.order_items
where order_id in (4, 20, 336, 668, 677, 791);
select * from sample_schema.products
where product_id in (37, 132, 29, 121, 26, 56);



select * from sample_schema.products
where name = 'Few'
or  name = 'More'
or name = 'Phone';

select * from sample_schema.products
where name not in ('Few', 'More', 'Phone');

select * from sample_schema.customers
where date(created_at) not in ('2016-06-21', '2020-09-27', '2021-01-22')


select * from sample_schema.orders;
--- aggregate functions (checkout other aggregate functions and know how they work)

select sum(amount) from sample_schema.orders;

select customer_id, sum(amount) as sum_amount, count(order_id) count_order, min(amount) min_order,
max(amount) as max_order
from sample_schema.orders
group by customer_id
having min(amount) > 400

