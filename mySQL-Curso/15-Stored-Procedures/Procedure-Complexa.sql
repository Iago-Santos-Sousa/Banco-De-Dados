# Procedure com parâmetro, que recebe os salários mais altos

DELIMITER //
CREATE PROCEDURE employeesWithHighSalary(
	-- parâmetro
	IN highSalary INT
)

BEGIN
	SELECT ep.first_name, sa.salary FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no
    WHERE sa.salary > highSalary;
END//

-- executa a procedure
CALL employeesWithHighSalary(100000);
CALL employeesWithHighSalary(80000);

SHOW PROCEDURE STATUS;

-- mostra detalhes da procedure
SHOW CREATE PROCEDURE employeesWithHighSalary;




