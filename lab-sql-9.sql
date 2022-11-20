use sakila;

select distinct date_format(convert(rental_date,date),'%M') from rental;
create table rentals_may as (select *
    from rental
    where date_format(convert(rental_date,date),'%M') = 'May'); -- Q1, Q2
        
select * from rentals_may;

create table rentals_june as (select *
    from rental
    where date_format(convert(rental_date,date),'%M') = 'June'); -- Q3, Q4
    
select * from rentals_june;

select customer_id, count(rental_id)  from rentals_may group by customer_id order by customer_id; -- Q5

select customer_id , count(rental_id) from rentals_june group by customer_id order by customer_id; -- Q6




