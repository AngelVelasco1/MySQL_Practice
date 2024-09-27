USE Sales;
/* Basic Sintax */
DELIMITER //
CREATE PROCEDURE sp_getSuscriptions()
    BEGIN
        SELECT * FROM suscriptions;
    END //
DELIMITER ;
/* Use the storaged procedure */
CALL sp_getSuscriptions ();
/* Show all procedures from a databse */
SHOW PROCEDURE STATUS WHERE db = 'Sales';
/* Delete a storaged procedure */
DROP PROCEDURE sp_getSuscriptions;

/* Real Example */
DELIMITER //
CREATE PROCEDURE sp_generateService (
    IN suscription_id BIGINT UNSIGNED, 
    IN customer_name VARCHAR(40), 
    IN customer_email VARCHAR(100), 
    IN card VARCHAR(16),
    OUT serviceResponse VARCHAR(100)
)
    BEGIN 
        DECLARE emailCount INT DEFAULT 0;
        DECLARE customer_id INT DEFAULT 0;
        START TRANSACTION;
            SELECT COUNT(*) INTO emailCount FROM customers 
            WHERE customer_email = email;

            IF emailCount > 0 THEN
                SELECT "You're already register" INTO serviceResponse;
            ELSE
                INSERT INTO customers VALUES (0, customer_name, customer_email);
                SELECT LAST_INSERT_ID() INTO customer_id;
                INSERT INTO cards VALUES (0, customer_id, AES_ENCRYPT(card, customer_id));
                INSERT INTO services VALUES (0, customer_id, suscription_id);
                SELECT "Service Generare correctly" INTO serviceResponse;
            END IF;
        COMMIT;
    END //
DELIMITER ;

CALL sp_generateService(2, "Angel Velasco", "angelgg2020@outlook.com", "10848457451", @serviceResponse);
SELECT @serviceResponse;
SELECT * FROM customers;