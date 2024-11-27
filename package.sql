SQL> create package test as
  2  procedure demo(t_ename emp.ename%type);
  3  end test;
  4  /

Package created.
SQL> create or replace package body test as
  2    procedure demo(t_ename emp.ename%type)is
  3    t_sal  emp.sal%type;
  4  begin
  5  select sal into t_sal
  6  from emp
  7  where  ename=t_ename;
  8  dbms_output.put_line('sal:'||t_sal);
  9  end demo;
 10  end test;
 11  /

Package body created.


SQL>    declare
  2       code emp.ename%type := '&t_ename';
  3     begin
  4       test.demo(code);
  5     end;
  6     /
Enter value for t_ename: SMITH
old   2:      code emp.ename%type := '&t_ename';
new   2:      code emp.ename%type := 'SMITH';
sal:800
