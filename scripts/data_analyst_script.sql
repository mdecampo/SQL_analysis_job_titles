/* 1. How many rows are in the data_analyst_jobs table?
SELECT COUNT(*) 
FROM data_analyst_jobs;
Answer: 1793 */

/* 2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT company, title
FROM data_analyst_jobs
LIMIT 10;
Answer: ExxonMobil*/

/*3a. How many postings are in Tennessee? 
SELECT count(location) AS tn_jobs
FROM data_analyst_jobs
WHERE location='TN'
Answer: 21 jobs in TN

3b. 
SELECT count(location) AS tn_ky_jobs
FROM data_analyst_jobs
WHERE location IN ('TN','KY')
--Answer: 27 jobs in TN or KY*/

/*4. How many postings in Tennessee have a star rating above 4?
SELECT count(title)
FROM data_analyst_jobs
WHERE star_rating>4
Answer: 416*/

/*5. How many postings in the dataset have a review count between 500 and 1000?
SELECT count(*) 
FROM data_analyst_jobs 
WHERE review_count>=500 AND review_count<=1000
Answer: 151 jobs*/

/*6. Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?
SELECT location AS state, round(avg(star_rating),2) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
HAVING avg(star_rating) IS NOT NULL
ORDER BY avg(star_rating) DESC
Answer: NE has highest rating (4.20)*/

/*7. Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT count(distinct title)
FROM data_analyst_jobs
Answer: 881*/

/*8. How many unique job titles are there for California companies?
SELECT count(distinct title)
FROM data_analyst_jobs
WHERE location='CA'
Answer:230*/

/*9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
SELECT count(distinct company)
FROM data_analyst_jobs
where review_count>5000
Answer:40 companies*/

/*10.Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
Select company, round(avg(star_rating),1) as avg_star
FROM data_analyst_jobs
WHERE review_count>5000
GROUP BY company
ORDER BY avg(star_rating) DESC
Answer: 6 companies have a tied 4.2 rating. Ordering brings General Motors 4.2 to the top. */

/*11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT count(title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst %'
Answer:385 jobs*/

/*12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
SELECT title
from data_analyst_jobs
WHERE title NOT ILIKE '%Analy%'
Answer: 4 jobs, word: Tableau */

