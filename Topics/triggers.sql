/* Sintax */
CREATE TRIGGER trigger_name 
    {BEFORE | AFTER} {INSERT | UPDATE | DELETE}
    ON tableName
    FOR EACH ROW
    BEGIN
	    -- Logica que ejecutara
    END //

/* Real example */
CREATE TRIGGER tg_addCustomerLogs
    AFTER INSERT
    ON Customers
    FOR EACH ROW
    BEGIN
        INSERT INTO customerslogs VALUE(0, NEW.id, NOW());
    END;

SELECT * FROM customerslogs;