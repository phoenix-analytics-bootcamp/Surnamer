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


-- The following operations are performed on the dataset that contains the following tables merchants, transactions and chargebacks; schema is payments_tha
-- view your tables to see the columns
select * from payments_tha.merchants;
select * from payments_tha.transactions;
select * from payments_tha.chargebacks;

--using select keyword to select based on columns name and using 
select
merchant_category,
merchant_id,
country,
merchant_name
from payments_tha.merchants;

-- using select keyword to select based on cloumns name and alias:
select merchant_category as "Merchant Category",
merchant_id as "Merchant ID",
country,
merchant_name
from payments_tha.merchants

--using WHERE keyword to filter
-- regular filter
select
merchant_id,
merchant_category,
country,
merchant_name
from  payments_tha.merchants
where country = 'Nigeria';

select 
merchant_id, 
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where merchant_category = 'e-commerce';

-- filter with logical operation '--AND'
select merchant_id,
merchant_category,
country,
merchant_name
FROM payments_tha.merchants
where merchant_category = 'e-commerce' AND country = 'UK'

select 
merchant_id, 
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where merchant_category = 'gaming'
and country = 'Kenya';


-- filter with logical operation '--OR'

SELECT merchant_id,
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where merchant_category = 'gaming'
or country = 'Kenya';

select 
merchant_id, 
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where merchant_category = 'e-commerce'
or country = 'UK';


-- In and NOT 
-- IN
select 
merchant_id, 
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where country IN ('Nigeria', 'UK', 'Kenya');


--NOT or ! or <>
select merchant_id,
merchant_category,
country,
merchant_name
from payments_tha.merchants
WHERE country not IN ('Nigeria', 'UK', 'Kenya');

select merchant_id,
merchant_category,
country,
merchant_name
from payments_tha.Merchant
where country !='Nigeria';

select 
merchant_id, 
merchant_category,
country,
merchant_name
from 
payments_tha.merchants
where country <> 'Nigeria';

-- aggregate function multiple aggregation
select merchant_id, reason, count(chargeback_amount), min(chargeback_amount), max(chargeback_amount), sum(chargeback_amount)
from payments_tha.chargebacks
group by merchant_id, reason
order by 1;

--- If you have  a colum that is not defined with an aggregrate function in your select statement, you must include it in the gorup by clause
select merchant_category, count(merchant_category)
from payments_tha.merchants
group by merchant_category;


-- having clause in Group by
select reason, count(chargeback_amount)
from payments_tha.chargebacks
group by reason having reason <>'fraud';

--extra filter ( wildcards at the back front and back) and 'like'
select *
from payments_tha.chargebacks
where transaction_id like '%tnx%' -- this means we are selecting all columns from the chargebacks table in payments_tha schema where transaction_id contains the string 'tnx'. Note that it may be case sensitive and not equal to TNX

-- extract filter (one wildcards at the front)  and like
select  *
from payments_tha.chargebacks
where transaction_id like '%txn' -- means same as above except that transaction_id ends with tnx (example 123435tnx)

select  *
from payments_tha.chargebacks
where transaction_id like 'txn%' --means that we select all columns where the transaction_id begins with 'tnx' for example tnx12345

---JOIN
-- Join is used to connect multiple tables and extract information from them
-- we can have for example:

select * from sample_schema.customers
where customer_id = 2;
select * from sample_schema.orders 
where customer_id = 437;
select * from sample_schema.order_items 
where order_id = 527;
select * from sample_schema.products 
where product_id in (149, 131, 187, 148);

--inner Join: Suppose you have 2 tables innerjoin will return columns in both tables that have matching column. Example. suppose I have table customers with columns customer_id,name, email and another table orders with columns
-- customer_id, order_date and amount. both tables have common column (customer_id) so an innerjoin query can be written as:

 -- inner join
select customers.customer_id, 
orders.customer_id as orders_cust_id, 
customers.name, 
customers.email, 
orders.order_date, 
orders.amount
from sample_schema.customers customers
inner join sample_schema.orders orders 
on customers.customer_id = orders.customer_id;
-- iner join returns coloumns that are common to both tables only. -- Try it!!!

-- left join Will display every row on the left table (customers) plus the right table even if there are no corresponding rows in the right table
select customers.customer_id, 
orders.customer_id as orders_cust_id, 
customers.name, 
customers.email, 
orders.order_date, 
orders.amount
from sample_schema.customers customers
left join sample_schema.orders orders 
  on customers.customer_id = orders.customer_id;


-- right join wll display the entire table from the right table and the left table even if there is no corresponding entry in the right table. Note that there must exist a matching column (customer_id) called foreign key for us to be able to do joins
select customers.customer_id, 
orders.customer_id as orders_cust_id, 
customers.name, 
customers.email, 
orders.order_date, 
orders.amount
from sample_schema.customers customers
right join sample_schema.orders orders 
  on customers.customer_id = orders.customer_id;

-- Full outer join returns all records on both tables, matching or not (rarely used)
select customers.customer_id, 
orders.customer_id as orders_cust_id, 
customers.name, 
customers.email, 
orders.order_date, 
orders.amount
from sample_schema.customers customers
full outer join sample_schema.orders orders 
on customers.customer_id = orders.customer_id;

