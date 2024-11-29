set serveroutput on;
DECLARE	
	a number(20);
BEGIN
	a:=&no;
	if a>10 then
		if a<100 then
			dbms_output.put_line('<100');
		else
			dbms_output.put_line('>100');
		end if;
	end if;
END;
/

/*
SQL> @c:/diya/nastedif.sql;
Enter value for no: 50
old   4:        a:=&no;
new   4:        a:=50;
<100

PL/SQL procedure successfully completed.

SQL> @c:/diya/nastedif.sql;
Enter value for no: 500
old   4:        a:=&no;
new   4:        a:=500;
>100

PL/SQL procedure successfully completed.
*/