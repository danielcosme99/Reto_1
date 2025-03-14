CREATE TABLE Gerente (
    idGerente NUMBER PRIMARY KEY,
    descGerente VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Condicion (
    idCondicion NUMBER PRIMARY KEY,
    descCondicion VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Provincia (
    idProvincia NUMBER PRIMARY KEY,
    descProvincia VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Sede (
    idSede NUMBER PRIMARY KEY,
    descSede VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Distrito (
    idDistrito NUMBER PRIMARY KEY,
    idProvincia NUMBER,
    descDistrito VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(idProvincia)
);


CREATE TABLE Hospital (
    idHospital NUMBER PRIMARY KEY,
    idDistrito NUMBER,
    Nombre VARCHAR2(100),
    Antiguedad NUMBER,
    Area NUMBER,
    idSede NUMBER,
    idGerente NUMBER,
    idCondicion NUMBER,
    fechaRegistro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(idDistrito),
    FOREIGN KEY (idSede) REFERENCES Sede(idSede),
    FOREIGN KEY (idGerente) REFERENCES Gerente(idGerente),
    FOREIGN KEY (idCondicion) REFERENCES Condicion(idCondicion)
);
