SET SERVEROUTPUT ON;
--REGISTRAR NUEVO HOSPITAL---------------
        DECLARE
            v_idHospital  NUMBER    := 1;
            v_idDistrito  NUMBER    := 30;
            v_nombre  VARCHAR2(100) := 'Solidaridad 3';
            v_antiguedad  NUMBER    := 20;
            v_area        NUMBER    := 5480;
            v_idSede      NUMBER    := 1;
            v_idGerente   NUMBER    := 3;
            v_idCondicion NUMBER    := 1;
        BEGIN
            SP_HOSPITAL_REGISTRAR(v_idHospital,v_idDistrito,v_nombre,v_antiguedad,v_area,v_idSede,v_idGerente,v_idCondicion);
        END;
/
SET SERVEROUTPUT ON;
--ACTUALIZAR DATOS DEL HOSPITAL---------------
        DECLARE
            v_idHospital  NUMBER    := 1;
            v_idDistrito  NUMBER    := 29;
            v_nombre  VARCHAR2(100) := 'Solidaridad Villa el Salvador';
            v_antiguedad  NUMBER    := 15;
            v_area        NUMBER    := 2500;
            v_idSede      NUMBER    := 2;
            v_idGerente   NUMBER    := 2;
            v_idCondicion NUMBER    := 2;
        BEGIN
            SP_HOSPITAL_ACTUALIZAR(v_idHospital,v_idDistrito,v_nombre,v_antiguedad,v_area,v_idSede,v_idGerente,v_idCondicion);
        END;
/
SET SERVEROUTPUT ON;
--ELIMINAR UN REGISTRO DE LA TABLA HOSPITAL---------------
        DECLARE
            v_idHospital NUMBER := 1;
        BEGIN
            -- Llamar al procedimiento 
            SP_HOSPITAL_ELIMINAR(v_idHospital);
        END;

/
SET SERVEROUTPUT ON;
--LISTAR LOS REGISTROS DE LA TABLA HOSPITAL---------------
        DECLARE
            -- 1-> modo lista de registros
            -- 2-> modo tabla
            modo NUMBER := 2;
        BEGIN
            SP_HOSPITAL_LISTAR(modo);
        END;
/






