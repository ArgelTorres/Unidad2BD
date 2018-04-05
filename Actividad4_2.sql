--Crear una función para calcular la edad del ganador de un premio nobel
CREATE FUNCTION laureate_age(birth_date IN DATE)
    RETURN INTEGER
    IS age_current INTEGER;
    year1 INTEGER;
    year2 INTEGER;
    BEGIN
        year1 := EXTRACT(YEAR FROM NOW());
        year2 := EXTRACT (YEAR FROM birth_date);
        age_current := year1 - year2;
        RETURN(age_current);
    END;
--Crear función para calcular la edad del ganador de un premio nobel al momento de ganarlo
CREATE FUNCTION laureate_age_won (birth_date IN DATE, date_won  IN DATE)
    RETURN INTEGER
    IS age_current INTEGER;
    year1 INTEGER;
    year2 INTEGER;
    BEGIN
        year1 := EXTRACT(YEAR FROM date_won);
        year2 := EXTRACT (YEAR FROM birth_date);
        age_current := year1 - year2;
        RETURN(age_current);
    END;
--Crear un procedimiento almacenado para insertar a un ganador de algún premio nobel
create or replace procedure insertar_ganador IS algo_insert INTEGER, laureates_t IN TABLE, data_b IN STRING, data_c IN STRING ;
begin
INSERT INTO laureates_t
(name, birthdate, role_affiliate)
VALUES
(algo_insert, data_b, data_c);
end insertar_ganador;
