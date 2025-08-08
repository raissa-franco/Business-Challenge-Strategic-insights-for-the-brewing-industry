-- Q1 Which beers have the highest average overall ratings? (Top 10)
SELECT beer_beerid, beer_name, avg(review_overall) AS "AVG rev_overall"
FROM beer GROUP BY beer_beerid, beer_name
ORDER BY "AVG rev_overall" DESC LIMIT 10;

-- Q2 Which beer styles are the most popular? (Top 10)
SELECT beer_style, COUNT(*) AS "Number of reviews" 
FROM beer
GROUP BY beer_style
ORDER BY "Number of reviews" DESC LIMIT 10;

-- Q3 Who are the most active users (top 3 reviewers).
SELECT review_profilename, COUNT(*) AS "Number of reviews made"
FROM beer
GROUP BY review_profilename
ORDER BY "Number of reviews made" DESC LIMIT 3;

-- Q4 Which beer styles have an ABV greater than 20%?
SELECT DISTINCT beer_style, beer_abv_mean_fill 
FROM beer
WHERE beer_abv_mean_fill>20
ORDER BY beer_abv_mean_fill ASC;

-- Q5 which breweries were reviewed more than 30.000 times?
SELECT brewery_name,COUNT(*)
FROM beer
GROUP BY brewery_name
HAVING COUNT(*)>30000
ORDER BY COUNT(*) DESC;

-- Q6 Which beer styles with an ABV of less than 2% have a taste rating of 4 or greater?
SELECT DISTINCT beer_style,avg(review_taste)
FROM beer
WHERE beer_abv_mean_fill<2
GROUP BY beer_style
HAVING AVG(review_taste) >= 4
ORDER BY avg(review_taste) ASC;

-- Q7 Which beer styles received a score of 5 in all categories more than 100 times?
SELECT DISTINCT beer_style, COUNT(*) AS "Number of times"
FROM beer
WHERE review_appearance=5 AND review_aroma=5 
AND review_overall=5 AND review_palate=5 AND review_taste=5
GROUP BY beer_style
HAVING "Number of times">100
ORDER BY "Number of times" DESC;

-- Q8 Which breweries have been reviewed most recently?
SELECT DISTINCT brewery_name, review_time
FROM beer
ORDER BY review_time DESC LIMIT 10;

-- Q9 Which styles have been reviewed most recently?
SELECT DISTINCT beer_style, review_time
FROM beer
ORDER BY review_time DESC LIMIT 10;

-- Q10 Which beers with an ABV greater than 20% have an average taste rating of 5?
SELECT beer_beerid,beer_name,beer_abv_mean_fill,avg(review_taste)
FROM beer
WHERE beer_abv_mean_fill>20
GROUP BY beer_beerid,beer_name,beer_abv_mean_fill
HAVING avg(review_taste)>4
ORDER BY beer_abv_mean_fill DESC;
