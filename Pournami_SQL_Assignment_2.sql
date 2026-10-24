Create database Assignment_2;
use Assignment_2;

select * from Jomato;

--Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick Chicken Bites’

CREATE FUNCTION dbo.Modify_chicken
(
    @RestaurentType NVARCHAR(255)
)
RETURNS NVARCHAR(255)
AS
BEGIN
    RETURN 
       REPLACE(@RestaurentType, 'Quick Bites', 'Quick Chicken Bites');
END;


--Use the function to display the restaurant name and cuisine type which has the maximum number of rating

SELECT RestaurantName,CuisinesType
FROM Jomato
WHERE Rating = (SELECT MAX(Rating) FROM Jomato);



--Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4 start rating, ‘Good’
--if it has above 3.5 and below 5 star rating, ‘Average’ if it is above 3 and below 3.5 and ‘Bad’ if it is below 3 star rating

select RestaurantName, Rating,
case
when Rating > 4 then 'Excellent'
when Rating > 3.5 then 'Good'
when Rating > 3 then 'Average'
else 'Bad'
end as RatingStatus
from Jomato;


--Find the Ceil, floor and absolute values of the rating column and display the current date and 
--separately display the year, month_name and day

select 
Rating,
CEILING(Rating) AS CeilValue,
FLOOR(Rating) AS FloorValue,
ABS(Rating) AS AbsoluteValue,
GETDATE() AS CurrentDate,
YEAR(GETDATE()) AS Year,
DATENAME(MONTH, GETDATE()) AS MonthName,
DAY(GETDATE()) AS Day
from Jomato;

--Display the restaurant type and total average cost using rollup.

select RestaurantType, SUM(AverageCost) as TotalCost
from Jomato
group by rollup(RestaurantType);