SELECT DISTINCT CITY FROM STATION WHERE substr(reverse(CITY), 1, 1) in ('a', 'e', 'i', 'o', 'u');