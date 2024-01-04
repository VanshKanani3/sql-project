create database pizza_store;

use pizza_store;
select * from pizza_sales;
 
 select round(sum(total_price),3) as total_price_pizza
 from pizza_sales;
 
 select round(sum(total_price)/count(order_id),2) as Average_order_value
from pizza_sales;

select sum(quantity) as Total_pizzas_sold
from pizza_sales;

select count(order_id) as Total_orders
from pizza_sales;

select round(sum(quantity)/count(distinct order_id),2)as Average_pizza_per_order
from pizza_sales;

/* CHARTS */

select order_date , round(sum(total_price),2)
from pizza_sales
group by order_date;

select extract(hour from order_time) as hour_of_day , count(order_id) as total_price
from pizza_sales
group by extract(hour from order_time)
order by hour_of_day;

select pizza_category, sum(total_price) as category_sales
from pizza_sales
group by pizza_category;

select pizza_size, round(sum(total_price),2) as size_sales
from pizza_sales
group by pizza_size;

select pizza_category, sum(quantity) as pizzas_sold
from pizza_sales
group by pizza_category;

/*Top 5 Best Sellers by Revenue*/
select pizza_name as pizza_name, sum(total_price) as revenue
from pizza_sales
group by pizza_name
order by revenue desc
limit 5;

/*Total Quantity*/
select pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity desc
limit 5;

/*Total Orders*/
select pizza_name, count(order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders
limit 5;


/*Top 5 Best Sellers by Revenue*/
select pizza_name as pizza_name, sum(total_price) as revenue
from pizza_sales
group by pizza_name
order by revenue
limit 5;

/*Total Quantity*/
select pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity
limit 5;
