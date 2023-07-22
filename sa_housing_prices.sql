
-- Difference between the number of houses sold 
-- in the state of South Australia, Australia in the first
-- quarters of years 2023 and 2022 per each city
select "City", sum("Sales Q1 2023") - sum("Sales Q1 2022") as difference  
from "SA_housing_prices"
group by 1
order by 2 ASC

--Difference between the number of houses sold 
--in the state of South Australia, Australia in the first
--quarters of years 2023 and 2022 per each city suburb
select "Suburb", "City", sum("Sales Q1 2023") - sum("Sales Q1 2022") as difference  
from "SA_housing_prices"
group by 1, 2
order by 3 asc

-- Median price of houses sold in Q1 2023 VS Q1 2022 per each city 
-- in South Australia
-- Median Change = difference in percentiles (Q1 2022 - Q2023)
select "City", sum ("Median Change") as mc from "SA_housing_prices"
group by 1
order by 2 DESC


-- Median price of houses sold in Q1 2023 VS Q1 2022 per each city suburb
-- in South Australia
select "Suburb", "City", "Median Change" as mc from "SA_housing_prices"
group by 1, 2, 3 
order by 3 desc

-- Does the number of suburbs correlate with the number of sales?
select "City", count (distinct "Suburb") as 
no_of_suburbs, sum ("Sales Q1 2023") as sum_sales
from "SA_housing_prices" 
group by 1
order by 2 desc


-- Cities with the highest median price value 
-- of sold houses in first quarter of 2023 
select "City", round (avg("Median Q1 2023"),0) as avg_median 
from "SA_housing_prices"
group by 1
order by 2 desc


-- Suburbs with the highest median price value 
-- of sold houses in first quarter of 2023 
select "Suburb", "City", "Median Q1 2023" from "SA_housing_prices"
group by 1, 2, 3
order by 3 desc



