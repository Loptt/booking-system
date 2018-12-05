CREATE TABLE Empleado (
empleado_id INT(11) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(40),
correo VARCHAR(40) NOT NULL,
PRIMARY KEY (empleado_id)
);

CREATE TABLE Sala (
sala_id INT(11) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
PRIMARY KEY (sala_id)
);

CREATE TABLE Reservacion(
reservacion_id INT(11) NOT NULL AUTO_INCREMENT,
empleado_id INT(11) NOT NULL,
sala_id INT(11) NOT NULL,
fecha_reservada DATE NOT NULL,
duracion INT(4) NOT NULL,
asunto VARCHAR(100),
PRIMARY KEY (reservacion_id)
FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id),
FOREIGN KEY (sala_id) REFERENCES Sala(sala_id)
);