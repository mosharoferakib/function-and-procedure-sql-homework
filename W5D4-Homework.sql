
--Write a function to update customer email address--

CREATE OR REPLACE FUNCTION update_email(
	_customer_id INTEGER,
	_email VARCHAR
)
RETURNS VARCHAR AS

$$
	BEGIN
	UPDATE customer 
	SET email = _email
	WHERE customer_id = _customer_id;
	RETURN _email;
	END
	
$$
LANGUAGE plpgsql;

SELECT update_email(1, 'mdmosharofe@gmail.com');

SELECT * 
FROM customer
WHERE email = 'mdmosharofe@gmail.com';



-- Write a procedure to add a new actor--

SELECT *
FROM actor;

CREATE OR REPLACE PROCEDURE add_new_actor( 
	_first_name VARCHAR(100),
	_last_name VARCHAR(100)
)AS 
$$
	BEGIN 
		INSERT INTO actor(
			first_name,
			last_name
		)VALUES (  
			_first_name,
			_last_name
		);
	COMMIT;
	END;
$$
LANGUAGE plpgsql;

CALL add_new_actor('Md Mosharofe', 'Hossen');

SELECT*
FROM actor a WHERE last_name = 'Hossen';





















