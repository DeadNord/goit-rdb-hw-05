DROP FUNCTION IF EXISTS divide_numbers;

DELIMITER //

CREATE FUNCTION divide_numbers(num1 FLOAT, num2 FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF num2 = 0 THEN
        RETURN NULL; -- або можна повернути 0 чи інше значення, щоб уникнути ділення на нуль
    ELSE
        RETURN num1 / num2;
    END IF;
END;

//

DELIMITER ;

SHOW FUNCTION STATUS WHERE Db = 'mydb';