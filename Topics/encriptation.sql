SELECT MD5('Encriptacion baja');
SELECT SHA1('Encriptacion media');
SELECT SHA1('Encriptacion media con mas caracteres');
SELECT AES_ENCRYPT('Encriptacion alta', 'llave_secreta');
SELECT AES_DECRYPT('campo encriptado', 'llave secreta');

/* Ejemplo */
CREATE TABLE pagos_recurrentes
(
    cuenta  VARCHAR(8) PRIMARY KEY,
    nombre  VARCHAR(50) NOT NULL,
    tarjeta BLOB
);

INSERT INTO pagos_recurrentes
VALUES ('12345678', 'Jon', AES_ENCRYPT('1234567890123488', '12345678')),
       ('12345677', 'Irma', AES_ENCRYPT('1234567890123477', '12345677')),
       ('12345676', 'Kenai', AES_ENCRYPT('1234567890123466', '12345676')),
       ('12345674', 'Kala', AES_ENCRYPT('1234567890123455', 'super_llave')),
       ('12345673', 'Miguel', AES_ENCRYPT('1234567890123444', 'super_llave'));

-- Desencriptara las tarjetas cuya llave sea 'super_llave'
SELECT CAST(AES_DECRYPT(tarjeta, 'super_llave') AS CHAR), nombre
FROM pagos_recurrentes;
-- No desencripta ninguna tarjeta, ya que ninguna tiene esta llave, no existe.
SELECT CAST(AES_DECRYPT(tarjeta, 'llave_mrd') AS CHAR), nombre
FROM pagos_recurrentes;