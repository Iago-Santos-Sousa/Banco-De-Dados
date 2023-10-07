USE employees;

DELIMITER //

CREATE PROCEDURE fullName()
BEGIN
	SELECT CONCAT(first_name, " ", last_name) AS full_name FROM employees;
END//

CALL fullName

