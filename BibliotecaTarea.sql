CREATE TABLE Libro(
    IdLibro int Primary Key,
    Titulo varchar(80),
    Editorial varchar(80),
    Area varchar(40)
);

Create Table Autor(
    IdAutor int Primary Key,
    nombre varchar(80),
    Nacionalidad varchar(80)
);

CREATE TABLE LibAut(
    IdLibAut int Primary Key,
    IdAutor int REFERENCES Autor(IdAutor),
    idLibro int REFERENCES Libro(idLibro)
);

CREATE TABLE Estudiante(
    IdLector int Primary Key,
    CI varchar(80),
    Nombre varchar(80),
    Direccion varchar(80),
    Carrera varchar(60),
    Edad int
);

Create Table Prestamo(
    IdPrestamo int Primary Key,
    IdLector int REFERENCES Estudiante(IdLector),
    IdLibro int REFERENCES Libro(IdLibro),
    FechaPrestamo DATE,
    FechaDevolucion DATE,
    Devuelto varchar(15)
);


-- Insertar registros en la tabla Libro
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (1, 'programando en C', 'McGraw-Hill', 'Computer Science');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (2, 'Lenguaje Relacional', 'Pearson', 'Base de Datos');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (3, 'Introduction to Databases', 'Addison-Wesley', 'Computer Science');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (4, 'Artificial Intelligence', 'Morgan Kaufmann', 'Artificial Intelligence');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (5, 'Machine Learning', 'Springer', 'Artificial Intelligence');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (6, 'Network Security', 'Wiley', 'Computer Science');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (7, 'Estructura de Datos', 'Prentice Hall', 'Base de Datos');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (8, 'Discrete Mathematics', 'Cambridge University Press', 'Mathematics');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (9, 'Linear Algebra', 'Elsevier', 'Mathematics');
INSERT INTO Libro (IdLibro, Titulo, Editorial, Area) VALUES (10, 'Quantum Computing', 'CRC Press', 'Quantum Computing');

-- Insertar registros en la tabla Autor
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (1, 'Brian Kernighan', 'USA');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (2, 'Robert Sedgewick', 'USA');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (3, 'Elmasri Navathe', 'India');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (4, 'Stuart Russell', 'UK');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (5, 'Tom Mitchell', 'USA');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (6, 'William Stallings', 'USA');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (7, 'Abraham Silberschatz', 'Israel');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (8, 'Kenneth H. Rosen', 'Guatemala');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (9, 'Gilbert Strang', 'Brasil');
INSERT INTO Autor (IdAutor, Nombre, Nacionalidad) VALUES (10, 'Michael Nielsen', 'Guatemala');

-- Insertar registros en la tabla LibAut
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (1, 1, 1);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (2, 2, 2);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (3, 3, 1);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (4, 2, 4);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (5, 5, 5);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (6, 6, 4);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (7, 5, 5);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (8, 7, 8);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (9, 2, 1);
INSERT INTO LibAut (IdLibAut, IdAutor, IdLibro) VALUES (10, 1, 3);

-- Insertar registros en la tabla Estudiante
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (1, '1234567890', 'Juan Pérez', 'Calle Falsa 123', 'Ingeniería de Sistemas', 22);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (2, '2345678901', 'Ana García', 'Avenida Siempre Viva 456', 'Matemáticas', 21);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (3, '3456789012', 'Luis Rodríguez', 'Boulevard de los Sueños 789', 'Ingeniería Electrónica', 23);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (4, '4567890123', 'María López', 'Calle Larga 987', 'Ciencias de la Computación', 20);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (5, '5678901234', 'Carlos Torres', 'Camino Real 654', 'Ingeniería de Sistemas', 24);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (6, '6789012345', 'Laura Fernández', 'Paseo del Parque 321', 'Ingeniería Industrial', 22);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (7, '7890123456', 'Jorge Díaz', 'Plaza Mayor 159', 'Física', 21);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (8, '8901234567', 'Sofía Ramírez', 'Avenida del Sol 753', 'Química', 22);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (9, '9012345678', 'David Martínez', 'Calle del Río 258', 'Biología', 15);
INSERT INTO Estudiante (IdLector, CI, Nombre, Direccion, Carrera, Edad) VALUES (10, '0123456789', 'Luis Antonio Lopez', 'Peten', 'Ingenieria', 21);

-- Insertar registros en la tabla Prestamo
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (1, 1, 1, TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'Sí');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (2, 2, 2, TO_DATE('2024-08-03', 'YYYY-MM-DD'), TO_DATE('2024-08-17', 'YYYY-MM-DD'), 'No');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (3, 10, 3, TO_DATE('2024-08-05', 'YYYY-MM-DD'), TO_DATE('2024-08-19', 'YYYY-MM-DD'), 'Sí');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (4, 4, 4, TO_DATE('2024-08-07', 'YYYY-MM-DD'), TO_DATE('2024-08-21', 'YYYY-MM-DD'), 'No');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (5, 5, 5, TO_DATE('2024-08-09', 'YYYY-MM-DD'), TO_DATE('2024-08-23', 'YYYY-MM-DD'), 'Sí');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (6, 6, 6, TO_DATE('2024-08-11', 'YYYY-MM-DD'), TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'No');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (7, 10, 1, TO_DATE('2024-08-13', 'YYYY-MM-DD'), TO_DATE('2024-08-27', 'YYYY-MM-DD'), 'Sí');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (8, 8, 8, TO_DATE('2024-08-15', 'YYYY-MM-DD'), TO_DATE('2024-08-29', 'YYYY-MM-DD'), 'No');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (9, 9, 7, TO_DATE('2024-08-17', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'), 'Sí');
INSERT INTO Prestamo (IdPrestamo, IdLector, IdLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES (10, 10, 4, TO_DATE('2024-08-19', 'YYYY-MM-DD'), TO_DATE('2024-09-02', 'YYYY-MM-DD'), 'No');



Select * From Autor;

Select Nombre, Edad From Estudiante;

Select Nombre From Estudiante where substr(Nombre, 1, 1) IN ('G', 'A');

Select * From Autor where nacionalidad='Guatemala';

Select L.Titulo
From Prestamo P
JOIN Estudiante E ON P.IdLector = E.IdLector
JOIN Libro L ON P.IdLibro = L.IdLibro
WHERE E.Nombre = 'Luis Antonio Lopez';


Select * From Estudiante where edad<18;

Select e.Nombre, e.Carrera, l.Titulo, l.Area
From Prestamo p
join estudiante e on p.IdLector= e.IdLector
join libro l on p.IdLibro= l.IdLibro
where l.Area = 'Base de Datos';

SELECT A.Nombre, L.Titulos
FROM Autor A, LibAut LA, Libro L
WHERE A.IdAutor = LA.IdAutor
AND L.IdLibro = LA.IdLibro;
