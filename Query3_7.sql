--Obtener los 5 premios novel mas recientes
SELECT *
    FROM (SELECT prize_1.year 
    FROM ARG.PRIZE prize_l
    ORDER BY prize_l.year DESC)
WHERE ROWNUM <=5
--Obtener los últimos 10 premios nobel de física
SELECT *
    FROM(SELECT prize_p.year, prize_p.category
    FROM ARG.PRIZE prize_p
    WHERE prize_p.category == "The nobel prize in physics"
    GROUP BY (prize_p.year))
WHERE ROWNUM <= 10
--Obtener las personas que han ganado más de un premio
SELECT COUNT(placeholder) AS award_a
    FROM ARG.LAUREATES
    WHERE award_a > 1
--Obtener el campo o lenguaje con mas premios nobel
SELECT COUNT(awd.prize_name) as awd_a
    FROM ARG.AWARD awd 
    ORDER BY awd_a 
    
--Obtener los premios ganados desde el año 1980 al 1990 en química
SELECT *
    FROM (SELECT prize_inf.year
    FROM ARG.PRIZE prize_inf
    WHERE ( prize_inf.year BETWEEN 1980 AND 1990))
WHERE prize_inf.category == "The nobel prize in chamistry"
--Obtener el premio nobel ganado menos ocasiones
SELECT *
    FROM(SELECT COUNT(awd.name) times_w
    FROM ARG.AWARD awd
    ORDER BY times_w DESC)
WHERE ROWNUM = 1
--Obtener los premio nobel compartido
SELECT *
    FROM ARG. 
    WHERE ARG.AWARD awd.prize_id = awd.prize_id2
--Obtener el país con más premio nobel
SELECT countries
    FROM COUNT (SELECT *
    FROM ARG.COUNTRY_A)
    ORDER BY countries
--Obtener el promedio de edad de todos los ganadores al momento en que ganan su premio
SELECT *
    FROM  AVG (SELECT awd.yeas AS year_won
    FROM ARG.AWARD awd
SELECT *
    FROM ARG.LAUREATES lau
    SELECT YEAR FROM lau.birthdate as birthyear
year_won - birthyear AS age_won)
---???
    
    