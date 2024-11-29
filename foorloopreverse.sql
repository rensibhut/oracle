set serveroutput on;
DECLARE
	id number(2);
begin
	for id in REVERSE 1..10 LOOP
		dbms_output.put_line('Id:'||id);
	end loop;
end;
/

/*
SQL> @c:\diya\foorloopreverse.sql;
Id:10
Id:9
Id:8
Id:7
Id:6
Id:5
Id:4
Id:3
Id:2
Id:1

PL/SQL procedure successfully completed.
*/