set serveroutput on;
DECLARE	
	no1 number(10);
BEGIN
	no1:=&no;
	if(no1=0)then
		dbms_output.put_line('Zero');
	end if;
END;
/
	