set serveroutput on;
DECLARE 
 no1 number(10);
BEGIN
 no1:=&no;
 if(no1=0)then
  dbms_output.put_line('Zero');
elsif no1>0 then
  dbms_output.put_line('+ve');
else
  dbms_output.put_line('-ve');
end if;
END;
/

/*
SQL> @c:\diya\elsif.sql;
Enter value for no: 3
old   4:  no1:=&no;
new   4:  no1:=3;
+ve

PL/SQL procedure successfully completed.

SQL> @c:\diya\elsif.sql;
Enter value for no: -3
old   4:  no1:=&no;
new   4:  no1:=-3;
-ve

PL/SQL procedure successfully completed.

SQL> @c:\diya\elsif.sql;
Enter value for no: 0
old   4:  no1:=&no;
new   4:  no1:=0;
Zero

PL/SQL procedure successfully completed.
*/