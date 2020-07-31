--Write a query that allows you to inspect the schema of the naep table.

SELECT *
FROM naep;

--Write a query that returns the first 50 records of the naep table.
SELECT *
FROM naep
LIMIT 50;

--Write a query that returns summary statistics for avg_math_4_score by state.
--Make sure to sort the results alphabetically by state name.

SELECT COUNT(avg_math_4_score), MIN(avg_math_4_score), MAX(avg_math_4_score), state
FROM naep
GROUP BY state 
ORDER BY state ASC;


--Write a query that alters the previous query so that it returns only the 
--summary statistics for avg_math_4_score by state with differences 
--in max and min values that are greater than 30.

SELECT AVG(avg_math_4_score), state, MAX(avg_math_4_score), MIN(avg_math_4_score)
FROM naep
WHERE avg_math_4_score > 30
GROUP BY state 
ORDER BY state ASC;

--Write a query that returns a field called bottom_10_states.
--This field should list the states in the bottom 10 for avg_math_4_score in the year 2000.

SELECT ROUND(AVG(avg_math_4_score)) AS bottom_10_states, state
FROM naep
WHERE year = 2000
GROUP BY avg_math_4_score, state
ORDER BY state
LIMIT 10;


--Write a query that calculates the average avg_math_4_score, 
--rounded to the nearest two decimal places, over all states in the year 2000.

SELECT ROUND(AVG(avg_math_4_score),2) avg_math_4_score, state
FROM naep
WHERE year=2000
GROUP BY state;

--Write a query that returns a field called below_average_states_y2000. 
--This field should list all states with an avg_math_4_score 
--less than the average over all states in the year 2000.

--Write a query that SELECT a field called below_average_states_y2000. 
--This field should list all states FROM naep WHERE avg_math_4_score IS
--less than below_average_states_y2000 over all states in the year 2000.

SELECT state, avg_math_4_score AS below_average_states_y2000, year
FROM naep
WHERE year = 2000
GROUP BY state, naep.avg_math_4_score, naep.year
HAVING avg_math_4_score < ROUND(AVG(avg_math_4_score),2); 

--Write a query that returns a field called scores_missing_y2000 that 
--lists any states with missing values in 
--the avg_math_4_score column of the naep table for the year 2000.

--Write a query that returns a field called scores_missing_y2000 that 
--lists any states WHERE missing values in the avg_math_4_score column 
--FROM the naep table for the year 2000.


SELECT state AS scores_missing_y2000
FROM naep
WHERE year = 2000
GROUP BY state, naep.avg_math_4_score
HAVING avg_math_4_score IS NULL;

--Write a query that returns, for the year 2000, the state, avg_math_4_score,
--and total_expenditure from the naep table, joined using the LEFT OUTER JOIN 
--clause with the finance table. Use id as the key and order the output by 
--total_expenditure from greatest to least. Make sure to round avg_math_4_score 
--to the nearest two decimal places, and then filter out NULL values in avg_math_4_scores 
--in order to see any correlation more clearly

SELECT state, (ROUND(avg_math_4_score),2), total expenditure
FROM naep AS n LEFT OUTER JOIN finance AS f ON n.avg_math_4_score.id= f.total_expenditure.id;
WHERE avg_match4_score IS NOT NULL
ORDER BY total_expenditure DESC;
