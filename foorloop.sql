set serveroutput on;
DECLARE
	id number(2);
begin
	for id in 1..10 LOOP
		dbms_output.put_line('Id:'||id);
	end loop;
end;
/

/*
SQL> @c:\diya\foorloop.sql;
Id:1
Id:2
Id:3
Id:4
Id:5
Id:6
Id:7
Id:8
Id:9
Id:10

PL/SQL procedure successfully completed.
*/