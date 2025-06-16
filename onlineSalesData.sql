select COUNT(distinct(Transaction_ID)) as order_volume
,YEAR(Date) as order_year, MONTH(Date) as order_month,
SUM(total_revenue) as monthly_revenue


from OnlineSalesData
WHERE YEAR(Date) = 2024
group by YEAR(Date), MONTH(date)
order by order_year, order_month
