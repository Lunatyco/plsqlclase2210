-- bloque anonimo
-- array conjunto de valores, ordenados lógicamente
-- tipificación de la adoptación de un dato cualquiera 
-- (cod TIPO_AUTO.CODIGO%type);
-- varchar2 ahorra espacio en las líneas de codigo, no considera espacios o los 0's
set SERVEROUTPUT ON
begin
    DBMS_OUTPUT.PUT_LINE('Hola');
end;

    create table tipo_auto(
    codigo number(4),
    nombre varchar2(50)
    );
set SERVEROUTPUT ON
declare 
--cod number(4);
cod TIPO_AUTO.CODIGO%type;
nom TIPO_AUTO.NOMBRE%type;
begin
select codigo, nombre  into cod, nom from TIPO_AUTO;
DBMS_OUTPUT.PUT_LINE('Codigo: '|| cod|| ' Tipo de Auto: '|| nom);
end;

insert into TIPO_AUTO values(1,'convertible');

select * from TIPO_AUTO;

delete from TIPO_AUTO where NOMBRE='convertible';
