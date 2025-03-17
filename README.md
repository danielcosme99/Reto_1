# 📌 Gestión de Hospitales - PL/SQL  

Este repositorio contiene un conjunto de scripts en PL/SQL para la gestión de hospitales. Incluye la creación de tablas, inserción de datos y procedimientos almacenados para registrar, actualizar, eliminar y listar hospitales en una base de datos Oracle. 

## 📋 Características  

- Creación de las tablas `HOSPITAL`,`GERENTE`,`CONDICION`,`DISTRITO`,`PROVINCIA` y `SEDE`.
- Procedimientos almacenados para
  - Registrar un nuevo hospital.
  - Actualizar los datos de un hospital existente.
  - Eliminar un hospital por `IDHOSPITAL`.
  - Listar los hospitales almacenados en la base de datos. 
- Listado de hospitales con 2 formatos de salida.
- Manejo de mensajes de éxito y errores dentro de cada procedimiento.  

## 🛠 Requisitos  

- **Oracle Database** (versión 11g o superior).  
- **SQL*Plus, SQL Developer o cualquier cliente compatible con PL/SQL**.  

## 🚀 Instalación  

1. **Clonar el repositorio**  
   ```sh
   git clone https://github.com/danielcosme99/Reto_1.git
   cd Reto_1
# 📌 Uso
1. **Conéctate a Oracle Database.**
2. **Ejecutar el script principal (`RetoBootcamp.sql`) para crear las tablas, funciones y procedimientos.**
3. **Ejecutar el script que llame al procedure que desee probar (`pruebas.sql`) para validar las operaciones. Tal como esta llamada al procedure de Registrar:**
  ```sh
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
   

