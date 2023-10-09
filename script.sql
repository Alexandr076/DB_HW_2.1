--postgresql 

CREATE TABLE CUSTOMERS (
    id SERIAL PRIMARY KEY,
    name varchar,
    surname varchar,
  	age integer,
  	phone_number varchar
 );
 
 CREATE TABLE ORDERS (
    id SERIAL PRIMARY KEY,
    date varchar,
    customer_id integer,
  	product_name integer,
  	amount varchar,
	CONSTRAINT fk_customer
      FOREIGN KEY(customer_id) 
	  REFERENCES customers(id)
 );
 
select product_name
from ORDERS o join customers c on o.customer_id = c.id
where UPPER(c.name) = 'alexey'