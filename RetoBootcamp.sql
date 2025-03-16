-- Creacion de tablas
CREATE TABLE Gerente (
    idGerente NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    descGerente VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Condicion (
    idCondicion NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    descCondicion VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Provincia (
    idProvincia NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    descProvincia VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Sede (
    idSede NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    descSede VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Distrito (
    idDistrito NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    idProvincia NUMBER,
    descDistrito VARCHAR2(100),
    fechaRegistro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(idProvincia)
);


CREATE TABLE Hospital (
    idHospital NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
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


---Insert en las tablas
INSERT INTO Gerente (descGerente) VALUES ('Jorge Juan Fuster');
INSERT INTO Gerente (descGerente) VALUES ('Demetrio Abellan');
INSERT INTO Gerente (descGerente) VALUES ('Saul Ferrando');
INSERT INTO Gerente (descGerente) VALUES ('Josep Trujillo');
INSERT INTO Gerente (descGerente) VALUES ('Victoria Palacio');
INSERT INTO Gerente (descGerente) VALUES ('Jose Enrique Rueda');
INSERT INTO Gerente (descGerente) VALUES ('Yanira Gallego');
INSERT INTO Gerente (descGerente) VALUES ('Marcelino Paz');
INSERT INTO Gerente (descGerente) VALUES ('Alma Salazar');
INSERT INTO Gerente (descGerente) VALUES ('Luis Enrique Pallares');

INSERT INTO Condicion (descCondicion) VALUES ('Operativo');  
INSERT INTO Condicion (descCondicion) VALUES ('En Mantenimiento');  
INSERT INTO Condicion (descCondicion) VALUES ('Cerrado Temporalmente');  
INSERT INTO Condicion (descCondicion) VALUES ('Clausurado');  
INSERT INTO Condicion (descCondicion) VALUES ('En Remodelación');  

INSERT INTO Provincia (descProvincia) VALUES ('LIMA');
INSERT INTO Provincia (descProvincia) VALUES ('BARRANCA');
INSERT INTO Provincia (descProvincia) VALUES ('CAJATAMBO');
INSERT INTO Provincia (descProvincia) VALUES ('CANTA');
INSERT INTO Provincia (descProvincia) VALUES ('CAÑETE');
INSERT INTO Provincia (descProvincia) VALUES ('HUARAL');
INSERT INTO Provincia (descProvincia) VALUES ('HUAROCHIRI');
INSERT INTO Provincia (descProvincia) VALUES ('HUAURA');
INSERT INTO Provincia (descProvincia) VALUES ('OYON');
INSERT INTO Provincia (descProvincia) VALUES ('YAUYOS');

INSERT INTO Sede (descSede) VALUES ('Sede Central');  
INSERT INTO Sede (descSede) VALUES ('Sede Regional Norte');  
INSERT INTO Sede (descSede) VALUES ('Sede Regional Sur');  
INSERT INTO Sede (descSede) VALUES ('Sede Provincial');  
INSERT INTO Sede (descSede) VALUES ('Sede Metropolitana');  

INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'ANCON');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'ATE');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'BARRANCO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'BREÑA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'CARABAYLLO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'CHORRILLOS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'COMAS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'EL AGUSTINO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'INDEPENDENCIA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'JESUS MARIA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'LA MOLINA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'LA VICTORIA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'LINCE');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'LOS OLIVOS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'MIRAFLORES');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'PACHACAMAC');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'PUENTE PIEDRA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'RIMAC');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN BORJA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN ISIDRO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN JUAN DE LURIGANCHO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN JUAN DE MIRAFLORES');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN LUIS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN MARTIN DE PORRES');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SAN MIGUEL');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SANTA ANITA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SANTIAGO DE SURCO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'SURQUILLO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'VILLA EL SALVADOR');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (1, 'VILLA MARIA DEL TRIUNFO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (2, 'PARAMONGA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (2, 'PATIVILCA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (2, 'SUPE');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (3, 'COPA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (3, 'GORGOR');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (3, 'HUANCAPON');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (3, 'MANAS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (4, 'ARAHUAY');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (4, 'HUAMANTANGA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (4, 'HUAROS');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (4, 'LACHAQUI');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (5, 'SAN VICENTE DE CAÑETE');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (5, 'ASIA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (5, 'CALANGO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (5, 'CERRO AZUL');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (5, 'CHILCA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (6, 'CHANCAY');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (6, 'AUCALLAMA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (7, 'MATUCANA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (7, 'ANTIOQUIA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (8, 'HUACHO');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (8, 'SAYAN');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (8, 'VEGUETA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (9, 'ANDAJES');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (9, 'COCHAMARCA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (10, 'AYAUCA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (10, 'HUANCAYA');
INSERT INTO Distrito (idProvincia, descDistrito) VALUES (10, 'TANTA');

--Creacion de procedures y funciones
--Funcion para verificar existencia de un registro
CREATE OR REPLACE FUNCTION REGISTRO_EXISTE_ID(
    p_tabla      IN VARCHAR2,  -- Nombre de la tabla
    p_campo      IN VARCHAR2,  -- Nombre del campo ID
    p_id         IN NUMBER     -- ID a verificar
) RETURN NUMBER IS
    v_count NUMBER;
    v_sql   VARCHAR2(2000);
BEGIN
    -- Consulta dinámica
    v_sql := 'SELECT COUNT(*) FROM ' || p_tabla || ' WHERE ' || p_campo || ' = :1';
    
    -- Ejecutar la consulta
    EXECUTE IMMEDIATE v_sql INTO v_count USING p_id;

    -- Devolvera 1 si existe, 0 si no existe
    RETURN v_count;
EXCEPTION
    WHEN OTHERS THEN
        RETURN -1;  -- Error inesperado
END REGISTRO_EXISTE_ID;
---Procedure para insertar
create or replace PROCEDURE SP_HOSPITAL_REGISTRAR (
    p_idHospital  IN HOSPITAL.IDHOSPITAL%TYPE,
    p_idDistrito  IN HOSPITAL.IDDISTRITO%TYPE,
    p_nombre      IN HOSPITAL.NOMBRE%TYPE,
    p_antiguedad  IN HOSPITAL.ANTIGUEDAD%TYPE,
    p_area        IN HOSPITAL.AREA%TYPE,
    p_idSede      IN HOSPITAL.IDSEDE%TYPE,
    p_idGerente   IN HOSPITAL.IDGERENTE%TYPE,
    p_idCondicion IN HOSPITAL.IDCONDICION%TYPE
) IS
    falta_parametros EXCEPTION;
    nombre_invalido EXCEPTION;
    valor_negativo EXCEPTION;
    hospital_existe EXCEPTION;
    validacion EXCEPTION;
    v_errores VARCHAR2(500) := '';
    
BEGIN
        -- Validar que los parametros no sean nulos
        IF p_idHospital IS NULL OR p_idDistrito IS NULL OR p_nombre IS NULL OR
           p_antiguedad IS NULL OR p_area IS NULL OR p_idSede IS NULL OR
           p_idGerente IS NULL OR p_idCondicion IS NULL THEN
            RAISE falta_parametros;
        END IF;
        -- Validar que el nombre del hospital no sea espacios en blanco
        IF TRIM(p_nombre) IS NULL THEN
            RAISE nombre_invalido;
        END IF; 
        -- Validar que antigüedad y área sean valores positivos
        IF p_antiguedad < 0 OR p_area <= 0 THEN
            RAISE valor_negativo;
        END IF;
        -- Verificar que no exista ya el hospital en la BD
        IF REGISTRO_EXISTE_ID('HOSPITAL', 'IDHOSPITAL', p_idHospital) = 1 THEN
            RAISE hospital_existe;
        END IF;
        
        -- Verificar la existencia de los valores referenciados
        IF REGISTRO_EXISTE_ID('DISTRITO', 'IDDISTRITO', p_idDistrito) = 0 THEN
            v_errores := v_errores || 'Error: El distrito con ID ' || p_idDistrito || ' no existe.' || CHR(10);
        END IF;
        
        IF REGISTRO_EXISTE_ID('SEDE', 'IDSEDE', p_idSede) = 0 THEN
            v_errores := v_errores || 'Error: La sede con ID ' || p_idSede || ' no existe.' || CHR(10);
        END IF;
        
        IF REGISTRO_EXISTE_ID('GERENTE', 'IDGERENTE', p_idGerente) = 0 THEN
            v_errores := v_errores || 'Error: El gerente con ID ' || p_idGerente || ' no existe.' || CHR(10);
        END IF;
        
        IF REGISTRO_EXISTE_ID('CONDICION', 'IDCONDICION', p_idCondicion) = 0 THEN
            v_errores := v_errores || 'Error: La condición con ID ' || p_idCondicion || ' no existe.' || CHR(10);
        END IF;
            
        IF v_errores IS NOT NULL THEN
            RAISE validacion;
        END IF;

        -- Si todos los valores existen, se inserta el nuevo registro
        INSERT INTO HOSPITAL (
            IDHOSPITAL, 
            IDDISTRITO, 
            NOMBRE, 
            ANTIGUEDAD, 
            AREA, 
            IDSEDE, 
            IDGERENTE, 
            IDCONDICION, 
            FECHAREGISTRO
        ) VALUES (
            p_idHospital, 
            p_idDistrito, 
            p_nombre, 
            p_antiguedad, 
            p_area, 
            p_idSede, 
            p_idGerente, 
            p_idCondicion, 
            CURRENT_DATE
        );
        DBMS_OUTPUT.PUT_LINE('Hospital registrado exitosamente.');

EXCEPTION
    WHEN falta_parametros THEN
        DBMS_OUTPUT.PUT_LINE('Error: Faltan uno o más parametros de entrada');
    WHEN hospital_existe THEN
        DBMS_OUTPUT.PUT_LINE('Error: El hospital con ID ' || p_idHospital || ' ya existe.');
    WHEN nombre_invalido THEN
        DBMS_OUTPUT.PUT_LINE('Error: El nombre del hospital no puede estar vacío.');
    WHEN valor_negativo THEN
        DBMS_OUTPUT.PUT_LINE('Error: La antigüedad y el área deben ser valores positivos.');
    WHEN validacion THEN
        DBMS_OUTPUT.PUT_LINE(v_errores);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error, por favor intente nuevamente.');
END SP_HOSPITAL_REGISTRAR;


