set serveroutput on;
DECLARE	
	a number(5);
BEGIN	
	a:=1;
	loop
		dbms_output.put(a  || '');
		a:=a+1;
			exit when a>10;
	end loop;
END;
/