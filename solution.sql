CREATE TABLE syntax_practice (

    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

select * from syntax_practice; 

--Get all users from Chicago
select * from syntax_practice where city = 'chicago'; 

--get all users with usernames that contain letter a
select * from syntax_practice where username like '%a%';

--Get all accounts with 0 balance and 0 transactions and add $10 to them
select * from syntax_practice where account_balance = '0' and transactions_attempted = '0';
update syntax_practice set account_balance = '10' where user_id = '25';  


--select all users that have attempted 9 or more transactions
select * from syntax_practice where transactions_attempted >= 9;

--Get the top three accoount balances

select * syntax_practice where [limit {3 | account-balance}];

delete from syntax_practice;

select * from syntax_practice order by account_balance desc limit 3;

--Get three lowest account balances
select * from syntax_practice order by account_balance asc limit 3;



--Get all users with account balances greater than 100.00
select * from syntax_practice where account_balance > '100';
