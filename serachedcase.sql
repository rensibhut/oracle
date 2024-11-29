set serveroutput on;
DECLARE 
	no1 number(20);
BEGIN
	no1:=&no;
	case
		when no1 > 0 then
			dbms_output.put_line('+ve');
		when no1 < 0 then
			dbms_output.put_line('-ve');
		else
			dbms_output.put_line('zero');
	end CASE;
END;
/

/*
SQL> @c:\diya\serachedcase.sql;
Enter value for no: 5
old   4:        no1:=&no;
new   4:        no1:=5;
+ve

PL/SQL procedure successfully completed.

SQL>  @c:\diya\serachedcase.sql;
Enter value for no: 0
old   4:        no1:=&no;
new   4:        no1:=0;
zero

PL/SQL procedure successfully completed.

SQL>  @c:\diya\serachedcase.sql;
Enter value for no: -3
old   4:        no1:=&no;
new   4:        no1:=-3;
-ve

PL/SQL procedure successfully completed.
*/