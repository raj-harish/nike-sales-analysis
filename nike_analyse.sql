drop database if exists new;
create database new;
use new;
show tables;
select * from nike_sales_uncleaned;
select count(*) as t_n
from nike_sales_uncleaned
where units_sold is null;
select count(*) as t_n
from nike_sales_uncleaned
where units_sold < 0;
SELECT COUNT(*) as negative_units 
FROM nike_sales_uncleaned 
WHERE Units_Sold < 0;

select Region, count(*) as T_C
from nike_sales_uncleaned
group by Region;

SELECT SUM(Revenue) as total_revenue 
FROM nike_sales_uncleaned 
WHERE Units_Sold >= 0 OR Units_Sold IS NULL;

select Sales_Channel, count(*) as t_c
from nike_sales_uncleaned
where Units_Sold > 0
group by Sales_Channel
order by t_C desc;

SELECT 
    Sales_Channel,
    SUM(Revenue) AS total_revenue,
    COUNT(*) AS total_orders,
    ROUND(AVG(Revenue), 2) AS avg_order_value
FROM nike_sales_uncleaned
WHERE Units_Sold >= 0  -- Return हटा दो
GROUP BY Sales_Channel
ORDER BY total_revenue DESC;


