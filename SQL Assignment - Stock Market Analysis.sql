#********************************************************************************************************************************************
														-- START OF ASSIGNMENT -- 



# SQL Assignment - Stock Market Analysis 
	-- Used the 'Table Data Import Wizard' for importing the csv files as each table in mysql - assignment database

use assignment;         -- to make assignment database active





#********************************************************************************************************************************************
# QUESTION 01:
	-- Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA.

create table bajaj1	as
select Date, `Close Price` from `bajaj auto`;

-- converted date from string to 'Date' datatype
	update bajaj1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it and also, updated the first 19 rows as NULL
		alter table bajaj1 
		add `20 Day MA` float;

		update bajaj1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from bajaj1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average
        
			update bajaj1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL

-- created 50 Day MA column and updated the values in it and also set the first 49 values as NULL
			alter table bajaj1 
			add `50 Day MA` float;

			update bajaj1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from bajaj1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average
            
				update bajaj1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL                     

select * from bajaj1;

# Create a new table named 'eicher1' containing the date, close price, 20 Day MA and 50 Day MA.
create table eicher1	as
select Date, `Close Price` from `eicher motors`;

-- converted date from string to 'Date' datatype
	update eicher1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it and set first 19 values to NULL
		alter table eicher1 
		add `20 Day MA` float;

		update eicher1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from eicher1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average
        
			update eicher1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL        

-- created 50 Day MA column and updated the values in it and set first 49 values to NULL
			alter table eicher1 
			add `50 Day MA` float;

			update eicher1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from eicher1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average
            
				update eicher1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL
 
select * from eicher1;
 
# Create a new table named 'hero1' containing the date, close price, 20 Day MA and 50 Day MA.
create table hero1	as
select Date, `Close Price` from `hero motocorp`;

-- converted date from string to 'Date' datatype
	update hero1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it and set first 19 values to NULL
		alter table hero1 
		add `20 Day MA` float;

		update hero1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from hero1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average
        
			update hero1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL        

-- created 50 Day MA column and updated the values in it and set first 49 values to NULL
			alter table hero1 
			add `50 Day MA` float;

			update hero1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from hero1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average
            
				update hero1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL

select * from hero1;

# Create a new table named 'infosys1' containing the date, close price, 20 Day MA and 50 Day MA.
create table infosys1	as
select Date, `Close Price` from infosys;

-- converted date from string to 'Date' datatype
	update infosys1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it and set the first 19 values to NULL
		alter table infosys1 
		add `20 Day MA` float;

		update infosys1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from infosys1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average
        
			update infosys1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL

-- created 50 Day MA column and updated the values in it and set first 49 values to NULL
			alter table infosys1 
			add `50 Day MA` float;

			update infosys1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from infosys1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average

				update infosys1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL

select * from infosys1;

# Create a new table named 'tcs1' containing the date, close price, 20 Day MA and 50 Day MA.
create table tcs1	as
select Date, `Close Price` from tcs;

-- converted date from string to 'Date' datatype
	update tcs1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it and set the first 19 values to NULL
		alter table tcs1 
		add `20 Day MA` float;

		update tcs1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from tcs1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average
        
			update tcs1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL

-- created 50 Day MA column and updated the values in it and set first 49 values to NULL
			alter table tcs1 
			add `50 Day MA` float;

			update tcs1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from tcs1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average

				update tcs1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL

select * from tcs1;

# Create a new table named 'tvs1' containing the date, close price, 20 Day MA and 50 Day MA.
create table tvs1	as
select Date, `Close Price` from `tvs motors`;

-- converted date from string to 'Date' datatype
	update tvs1
	set date= Str_to_date(date,'%d-%M-%Y'); 

-- created 20 Day MA column and updated the values in it
		alter table tvs1 
		add `20 Day MA` float;

		update tvs1 a
			inner join 
			(
			select date, avg(`close price`) over (order by date rows between 19 preceding and current row) as averagema from tvs1
			) b on a.date = b.date
		set a.`20 Day MA` = b.averagema;                -- calculated 20 Day moving average

			update tvs1
			set `20 Day MA`= null
			order by date
			limit 19;                            -- to udate the first 19 rows as NULL

-- created 50 Day MA column and updated the values in it
			alter table tvs1 
			add `50 Day MA` float;

			update tvs1 a
				inner join 
				(
				select date, avg(`close price`) over (order by date rows between 49 preceding and current row) as averagema from tvs1
				) b on a.date = b.date
			set a.`50 Day MA` = b.averagema;                -- calculated 50 Day moving average

				update tvs1
				set `50 Day MA`= null
				order by date
				limit 49;                            -- to udate the first 49 rows as NULL

select * from tvs1;





#********************************************************************************************************************************************
# QUESTION 02:
	-- Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)

create table master as
	select b.date, b.`close price` as Bajaj, t.`close price` as TCS, tv.`close price` as TVS, i.`close price` as Infosys,
		   e.`close price` as Eicher, h.`close price` as Hero 
       from `bajaj auto` b
			inner join tcs t on b.date = t.date 
			inner join `tvs motors` tv on t.date = tv.date
			inner join infosys i on tv.date = i.date
			inner join `eicher motors` e on i.date = e.date
			inner join `hero motocorp` h on e.date = h.date;      -- master table containing all the stocks close price as stock name

update master
set date= Str_to_date(date,'%d-%M-%Y'); 

select * from master;





#********************************************************************************************************************************************
# QUESTION 03:
	-- Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.

create table bajaj2 as 
select date, `close price` from bajaj1;

	alter table bajaj2 
	add `Signal` char(10); 

		update bajaj2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from bajaj1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from bajaj2;

#Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'eicher2'. Perform this operation for all stocks.

create table eicher2 as 
select date, `close price` from eicher1;

	alter table eicher2 
	add `Signal` char(10); 

		update eicher2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from eicher1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from eicher2;

#Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'hero2'. Perform this operation for all stocks.

create table hero2 as 
select date, `close price` from hero1;

	alter table hero2 
	add `Signal` char(10); 

		update hero2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from hero1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from hero1;

#Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'infosys2'. Perform this operation for all stocks.

create table infosys2 as 
select date, `close price` from infosys1;

	alter table infosys2 
	add `Signal` char(10); 

		update infosys2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from infosys1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from infosys2;

#Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'tcs2'. Perform this operation for all stocks.

create table tcs2 as 
select date, `close price` from tcs1;

	alter table tcs2 
	add `Signal` char(10); 

		update tcs2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from tcs1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from tcs2;

#Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'tvs2'. Perform this operation for all stocks.

create table tvs2 as 
select date, `close price` from tvs1;

	alter table tvs2 
	add `Signal` char(10); 

		update tvs2 a
			inner join 
			(
			select date, `Close Price`, `20 Day MA`, `50 Day MA`,
			if(`20 Day MA` > `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)<0,1) over(order by date rows between 1 preceding and 0 following), 'BUY', 
			if(`20 Day MA` < `50 Day MA` and LAG((`20 Day MA` - `50 Day MA`)>0,1) over(order by date rows between 1 preceding and 0 following),'SELL','HOLD')) as `signal` 
			from tvs1 order by date asc
			) b on a.date = b.date
		SET a.`Signal` = b.`signal`;         -- compares the 20 Day MA with 50 Day MA and generates the signal
			
select * from tvs2;




#********************************************************************************************************************************************
# QUESTION 04:
	-- Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.

Delimiter $$ 
create function `Signal for`(A text)
returns char(10) deterministic
begin 
	declare `Signal for` char(10); 
    if (select date from bajaj2 where date = A) then 
		set `Signal for` = (select `Signal` from bajaj2 where date = A);
	else 
		set `Signal for` = 'HOLD';
	end if;
return (`Signal for`);
end
$$               -- Function to generate the signal based on date passed


select `Signal for`('');            -- pass the date in the parenthesis in the format 'YYYY-DD-MM' to see the signal for that date.  


#********************************************************************************************************************************************
														-- END OF ASSIGNMENT -- 