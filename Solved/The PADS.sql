SELECT concat(name, "(", substr(occupation, 1, 1), ")") FROM OCCUPATIONS
ORDER BY name;
SELECT concat("There are a total of ", count(occupation), " ", lower(occupation), "s.")
FROM OCCUPATIONS GROUP BY occupation
ORDER BY count(occupation);