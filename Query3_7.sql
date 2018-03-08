--Obtener los 5 premios novel mas recientes
SELECT *
    FROM (SELECT prize_1.year 
    FROM ARG.PRIZE prize_l
    ORDER BY prize_l.year DESC)
WHERE ROWNUM <=5
--Obtener los �ltimos 10 premios nobel de f�sica
SELECT *
    FROM(SELECT prize_p.year, prize_p.category
    FROM ARG.PRIZE prize_p
    WHERE prize_p.category == "The nobel prize in physics"
    GROUP BY (prize_p.year))
WHERE ROWNUM <= 10
--Obtener las personas que han ganado m�s de un premio
SELECT COUNT(placeholder) AS award_a
    FROM ARG.LAUREATES
    WHERE award_a > 1
--Obtener el campo o lenguaje con mas premios nobel
SELECT FROM 
--Obtener los premios ganados desde el a�o 1980 al 1990 en qu�mica
SELECT *
    FROM (SELECT prize_inf.year
    FROM ARG.PRIZE prize_inf
    WHERE ( prize_inf.year BETWEEN 1980 AND 1990))
WHERE prize_inf.category == "The nobel prize in chamistry"