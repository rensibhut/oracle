set  serveroutput on;
DECLARE 
	eno number(10);
	nm varchar(20);

BEGIN 	
	eno:=&no;
	nm:='&name';
	dbms_output.put_line('no:'||eno);
	dbms_output.put_line('Name:'||nm);
END;
/


/* 
SQL> @c:\diya\demo.sql;
Enter value for no: 3
old   6:        eno:=&no;
new   6:        eno:=3;
Enter value for name: diya
old   7:        nm:='&name';
new   7:        nm:='diya';
no:3
Name:diya

PL/SQL procedure successfully completed.
*\