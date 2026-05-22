CREATE TABLE cliente(
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE barbero(
    id_barbero SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100)
);

CREATE TABLE servicio(
    id_servicio SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2)
);

CREATE TABLE cita(
    id_cita SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,

    id_cliente INT,
    id_barbero INT,
    id_servicio INT,

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    FOREIGN KEY (id_barbero)
        REFERENCES barbero(id_barbero),

    FOREIGN KEY (id_servicio)
        REFERENCES servicio(id_servicio)
);

INSERT INTO cliente(nombre, telefono)
VALUES
('Joseph', '1111-2222'),
('Yosep', '1122-5555'),
('Messi', '2222-3355'),
('Leomessi', '6666-4444'),
('Liomi', '6556-7777'),
('Leo', '8888-9999'),
('Ney', '7908-5656'),
('Saul', '7900-0000'),
('Ivan', '7330-5678'),
('Evan', '1987-3456'),
('Gonzalo', '7777-7777');

INSERT INTO servicio(nombre, precio)
VALUES
('Corte Clasico', 5.00),
('Fade', 7.00),
('Taper Fade', 8.00),
('Barba', 3.00),
('Afeitado', 4.00),
('Corte + Barba', 10.00),
('Diseños', 2.50),
('Lavado de Cabello', 3.50),
('Corte Moderno', 6.00),
('Low Fade', 7.50);

INSERT INTO cita(fecha, hora, id_cliente, id_barbero, id_servicio)
VALUES
('2026-05-22', '09:00:00', 1, 1, 1),
('2026-05-22', '10:00:00', 2, 2, 2),
('2026-05-22', '11:00:00', 3, 3, 3),
('2026-05-22', '12:00:00', 4, 4, 4),
('2026-05-22', '13:00:00', 5, 5, 5),
('2026-05-22', '14:00:00', 6, 6, 6),
('2026-05-22', '15:00:00', 7, 7, 7),
('2026-05-22', '16:00:00', 8, 8, 8),
('2026-05-22', '17:00:00', 9, 9, 9),
('2026-05-22', '18:00:00', 10, 10, 10); 

INSERT INTO barbero(nombre, especialidad)
VALUES
('Leo', 'Fade'),
('Joseph', 'Taper Fade'),
('Joseph', 'Barba'),
('Saul', 'Tinte'),
('Ivan', 'Diseños'),
('GonzaloPdf', 'Low Fade'),
('Marvin', 'Degradados'),
('Fran', 'Cortes Clasicos'),
('Johan', 'Afeitado'),
('Maritza', 'Mullet');

