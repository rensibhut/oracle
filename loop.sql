set serveroutput on;
DECLARE	
	a number(5);
BEGIN	
	a:=1;
	loop
		dbms_output.put_line(a);
		a:=a+1;
		if a>10 then
				exit;
		end if;
	end loop;
END;
/

/*
SQL> @c:\diya\loop.sql
1
2
3
4
5
6
7
8
9
10
*/