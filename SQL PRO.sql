create database sql_project26;
use sql_project26;

SELECT * FROM `p9-consolegames`;
SELECT * FROM `p9-consoledates`;

DESCRIBE `p9-consolegames`;
DESCRIBE `p9-consoledates`;

SELECT 
round((SUM(NA_SALES) /SUM(global_sales))
*100,2) AS NA_sales_PERCENTAGE
FROM `p9-consolegames`;

CREATE VIEW consol_games_VIEW AS
SELECT
PLATFORM,
YEAR,
name
(publisher,4)as publisher_short
FROM `p9-consolegames`
where platform is not null
order by platform asc,year desc;

select 
distinct platform,release_date
from platforms
where month(release_date) in (10,11);

SELECT
PLATFORM,
(last_year-first_year) AS LONGEVITY
FROM platforms
ORDER BY LONGEVITY ASC;

select
platforms,
max(year)-min(year) as longevity
from `p9-consolgames`
group by platforms
order by longevity asc;

SELECT 
str_to_date(YEAR,'%Y') AS CONVERTED_YEAR
FROM `p9-consolegames`;

alter table `p9-consolgames`
modify year date;

SELECT *
FROM `p9-consolegames`
WHERE year is null
or publisher is null;


select
coalesce(publisher,'unknown') as publisher
from `p9-consolgames`;


delete from `p9-consolgames`
where year is null;


update `p9-consolgames`
set year =(select round(avg(year))
from `p9-consolgames`)
where year is null;

select *
from `p9-consolgames`
where year is not null;