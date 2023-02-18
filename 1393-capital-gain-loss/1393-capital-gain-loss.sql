# Write your MySQL query statement below

select  stock_name, 
 sum(case when operation ="Buy" then price*-1
          when operation ="Sell" then price
          End) capital_gain_loss           
from Stocks 
group by stock_name    