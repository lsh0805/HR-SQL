SELECT sum(a.population) FROM CITY a, COUNTRY b WHERE a.countrycode = b.code and b.continent = 'ASIA';