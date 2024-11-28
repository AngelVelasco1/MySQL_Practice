-- Crear un usuario nuevo con su contraseña
CREATE USER 'angel'@'localhost' IDENTIFIED BY 'Davidteam1';

-- Dar todos los Privilegios a una db especifica
GRANT ALL PRIVILEGES ON angel_david TO 'angel'@'localhost';

-- Actualiza la informacion de privilegios
FLUSH PRIVILEGES;

-- Ver privilegios de un usuario
SHOW GRANTS FOR 'angel'@'localhost';

-- Remover todos los privilegios
REVOKE ALL, GRANT OPTION FROM 'angel'@'localhost';

-- Eliminar usuario
DROP USER 'angel'@'localhost';