select * from passenger;

--overall satisfaction

select satisfaction,
count(*) as passengers
from passenger
group by satisfaction

-- satisfaction percentage
SELECT
    satisfaction,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage
FROM passenger
GROUP BY satisfaction;

--satisfaction by travel class
select 
Type_of_Travel, satisfaction,
count(*) as passengers
from passenger
group by Type_of_Travel, satisfaction;


-- Average delay by satisfaction
SELECT
    satisfaction,
    ROUND(AVG("Departure_Delay")::numeric, 2) AS avg_departure_delay,
    ROUND(AVG("Arrival_Delay")::numeric, 2) AS avg_arrival_delay
FROM passenger
GROUP BY satisfaction;

-- Loyal vs Disloyal Customers
SELECT
    "Customer Type",
    satisfaction,
    COUNT(*) AS passengers
FROM passenger
GROUP BY "Customer Type", satisfaction;