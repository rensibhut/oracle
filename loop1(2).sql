set serveroutput on;
DECLARE	
	a number(5);
BEGIN	
	a:=1;
	loop
		dbms_output.put(a  || ' ');
		a:=a+1;
			exit when a>10;
	end loop;
	dbms_output.put_line(' ');
END;
/

/*
SQL> @c:/diya/loop1(2).sql
1 2 3 4 5 6 7 8 9 10

PL/SQL procedure successfully completed.
*/