SELECT CITY, length(CITY) FROM STATION order by length(CITY), CITY LIMIT 1;
SELECT CITY, length(CITY) FROM STATION order by length(CITY) desc, CITY asc LIMIT 1;