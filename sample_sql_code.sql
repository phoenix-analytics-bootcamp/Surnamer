#### Task 1
- create a database and name it DB1  
CREATE database DB1;

#### Task 2
- create a schema called test on the dataabase DB1  
Navigate into DB1 and run:  
    CREATE schema test;

#### Task 3:
- create a table mytable in your test schema inside the DB1 database  
    CREATE table schema.mytable;


Have you tried this on your own? give it a trial  
Going forward, the information that we will use for our table and schema will change. We will no longer use schema test and table mytable. You can adpat the code to fit your schema and tables....ok?  

#### View all the data in the orders table inside surnamer schema
select * 
from surnamer.orders;

# How to retrieve DATA  
Select order_id, customer_id, amount 
From surnamer.orders;



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
where id  = 3



update pelebe.pay_phonebook
set location = 'Evry'
where id_friend = 1


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

-- we now use a dataset that has the following tables customers, orders, order_items, products

select * from sample_schema.customers
where customer_id = 158;
select * from sample_schema.orders
where customer_id = 158;
select * from sample_schema.order_items
where order_id in (4, 20, 336, 668, 677, 791);
select * from sample_schema.products
where product_id in (37, 132, 29, 121, 26, 56);

-- Usin in, not in, =

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

-- guess what this query does
select customer_id, sum(amount) as sum_amount, count(order_id) count_order, min(amount) min_order,
max(amount) as max_order
from sample_schema.orders
group by customer_id
having min(amount) > 400

-- Rule: whenever you have a column in your select statement that is not an aggregate function, you must put the column in your group by clause

