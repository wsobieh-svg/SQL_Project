create view Castomer_Levels as
select customer_name, round(sum(sales),0) as Total_Sales,
case
when sum(sales) > 10000 then 'Vip Customer'
when sum(sales) > 5000 then 'Average Customer'
else 'Normal Customer'
end as Castomer_Levels

from [Sample - Superstore] 
group by customer_name;

select Castomer_Levels, count(Castomer_Levels) as Customer_Count
from Castomer_Levels group by Castomer_Levels order by count(Castomer_Levels) desc;