Microsoft Windows [版本 10.0.22000.856]
(c) Microsoft Corporation。保留所有权利。

C:\WINDOWS\system32>d:

D:\>cd D:\MySql\mysql-8.0.30-winx64

D:\MySql\mysql-8.0.30-winx64>cd bin

D:\MySql\mysql-8.0.30-winx64\bin>net mysql start
此命令的语法是:

NET
    [ ACCOUNTS | COMPUTER | CONFIG | CONTINUE | FILE | GROUP | HELP |
      HELPMSG | LOCALGROUP | PAUSE | SESSION | SHARE | START |
      STATISTICS | STOP | TIME | USE | USER | VIEW ]

D:\MySql\mysql-8.0.30-winx64\bin>net mysql.exe start
此命令的语法是:

NET
    [ ACCOUNTS | COMPUTER | CONFIG | CONTINUE | FILE | GROUP | HELP |
      HELPMSG | LOCALGROUP | PAUSE | SESSION | SHARE | START |
      STATISTICS | STOP | TIME | USE | USER | VIEW ]

D:\MySql\mysql-8.0.30-winx64\bin>net mysql.exe
此命令的语法是:

NET
    [ ACCOUNTS | COMPUTER | CONFIG | CONTINUE | FILE | GROUP | HELP |
      HELPMSG | LOCALGROUP | PAUSE | SESSION | SHARE | START |
      STATISTICS | STOP | TIME | USE | USER | VIEW ]

D:\MySql\mysql-8.0.30-winx64\bin>mysql -uroot -p
Enter password: ******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bjpowernode        |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> ues bjpowernode;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ues bjpowernode' at line 1
mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> use bjpowernode;
Database changed
mysql> show tables;
+-----------------------+
| Tables_in_bjpowernode |
+-----------------------+
| dept                  |
| emp                   |
| salgrade              |
+-----------------------+
3 rows in set (0.00 sec)

mysql> show emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp' at line 1
mysql> select  * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from dept;
+--------+-------------+----------+
| deptno | dname       | loc      |
+--------+-------------+----------+
|     10 | ACCOUNTING  | NEW YORK |
|     20 | RESEARCHING | DALLAS   |
|     30 | SALES       | CHICAGO  |
|     40 | OPERATIONS  | BOSTON   |
+--------+-------------+----------+
4 rows in set (0.00 sec)

mysql> se;ect * from salgrade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'se' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ect * from salgrade' at line 1
mysql> select * from salgrade;
+-------+-------+-------+
| grade | losal | hisal |
+-------+-------+-------+
|     1 |   700 |  1200 |
|     2 |  1201 |  1400 |
|     3 |  1401 |  2000 |
|     4 |  2001 |  3000 |
|     5 |  3001 |  5000 |
+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> desc emp;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empno    | int         | NO   | PRI | NULL    |       |
| ename    | varchar(10) | YES  |     | NULL    |       |
| job      | varchar(9)  | YES  |     | NULL    |       |
| mgr      | int         | YES  |     | NULL    |       |
| hiredate | date        | YES  |     | NULL    |       |
| sal      | double(7,2) | YES  |     | NULL    |       |
| comm     | double(7,2) | YES  |     | NULL    |       |
| deptno   | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> select version;
ERROR 1054 (42S22): Unknown column 'version' in 'field list'
mysql> select version();
+-----------+
| version() |
+-----------+
| 8.0.30    |
+-----------+
1 row in set (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bjpowernode        |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use bjpowernode;
Database changed
mysql> show
    ->
    ->
    ->
    ->
    -> \c
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bjpowernode        |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> desc
    -> bjpowernode;
ERROR 1146 (42S02): Table 'bjpowernode.bjpowernode' doesn't exist
mysql> use bjpowernode;
Database changed
mysql> desc dept;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| deptno | int         | NO   | PRI | NULL    |       |
| dname  | varchar(14) | YES  |     | NULL    |       |
| loc    | varchar(13) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select dname;
ERROR 1054 (42S22): Unknown column 'dname' in 'field list'
mysql> select dname from dept;
+-------------+
| dname       |
+-------------+
| ACCOUNTING  |
| RESEARCHING |
| SALES       |
| OPERATIONS  |
+-------------+
4 rows in set (0.00 sec)

mysql> select dname,loc from dept;
+-------------+----------+
| dname       | loc      |
+-------------+----------+
| ACCOUNTING  | NEW YORK |
| RESEARCHING | DALLAS   |
| SALES       | CHICAGO  |
| OPERATIONS  | BOSTON   |
+-------------+----------+
4 rows in set (0.00 sec)

mysql> select * from dept;
+--------+-------------+----------+
| deptno | dname       | loc      |
+--------+-------------+----------+
|     10 | ACCOUNTING  | NEW YORK |
|     20 | RESEARCHING | DALLAS   |
|     30 | SALES       | CHICAGO  |
|     40 | OPERATIONS  | BOSTON   |
+--------+-------------+----------+
4 rows in set (0.00 sec)

mysql> select *from;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select * from bjpowernode;
ERROR 1146 (42S02): Table 'bjpowernode.bjpowernode' doesn't exist
mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename from emp;
+--------+
| ename  |
+--------+
| SIMITH |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.00 sec)

mysql> select ename as econame,job from emp;
+---------+-----------+
| econame | job       |
+---------+-----------+
| SIMITH  | CLERK     |
| ALLEN   | SALESMAN  |
| WARD    | SALESMAN  |
| JONES   | MANAGER   |
| MARTIN  | SALESMAN  |
| BLAKE   | MANAGER   |
| CLARK   | MANAGER   |
| SCOTT   | ANALYST   |
| KING    | PRESIDENT |
| TURNER  | SALESMAN  |
| ADAMS   | CLERK     |
| JAMES   | CLERK     |
| FORD    | ANALYST   |
| MILLER  | CLERK     |
+---------+-----------+
14 rows in set (0.00 sec)

mysql> desc dept;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| deptno | int         | NO   | PRI | NULL    |       |
| dname  | varchar(14) | YES  |     | NULL    |       |
| loc    | varchar(13) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select deptno,dename deptname from dept;
ERROR 1054 (42S22): Unknown column 'dename' in 'field list'
mysql> select deptno,dname deptname from dept;
+--------+-------------+
| deptno | deptname    |
+--------+-------------+
|     10 | ACCOUNTING  |
|     20 | RESEARCHING |
|     30 | SALES       |
|     40 | OPERATIONS  |
+--------+-------------+
4 rows in set (0.00 sec)

mysql> select deptno,dename deptname,loc from dept;
ERROR 1054 (42S22): Unknown column 'dename' in 'field list'
mysql> select deptno,dname deptname,loc from dept;
+--------+-------------+----------+
| deptno | deptname    | loc      |
+--------+-------------+----------+
|     10 | ACCOUNTING  | NEW YORK |
|     20 | RESEARCHING | DALLAS   |
|     30 | SALES       | CHICAGO  |
|     40 | OPERATIONS  | BOSTON   |
+--------+-------------+----------+
4 rows in set (0.00 sec)

mysql> desc emp;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empno    | int         | NO   | PRI | NULL    |       |
| ename    | varchar(10) | YES  |     | NULL    |       |
| job      | varchar(9)  | YES  |     | NULL    |       |
| mgr      | int         | YES  |     | NULL    |       |
| hiredate | date        | YES  |     | NULL    |       |
| sal      | double(7,2) | YES  |     | NULL    |       |
| comm     | double(7,2) | YES  |     | NULL    |       |
| deptno   | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> select ename,sal from emp;
+--------+---------+
| ename  | sal     |
+--------+---------+
| SIMITH |  800.00 |
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| CLARK  | 2450.00 |
| SCOTT  | 3000.00 |
| KING   | 5000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| JAMES  |  950.00 |
| FORD   | 3000.00 |
| MILLER | 1300.00 |
+--------+---------+
14 rows in set (0.00 sec)

mysql> select ename,sal*12 from emp;
+--------+----------+
| ename  | sal*12   |
+--------+----------+
| SIMITH |  9600.00 |
| ALLEN  | 19200.00 |
| WARD   | 15000.00 |
| JONES  | 35700.00 |
| MARTIN | 15000.00 |
| BLAKE  | 34200.00 |
| CLARK  | 29400.00 |
| SCOTT  | 36000.00 |
| KING   | 60000.00 |
| TURNER | 18000.00 |
| ADAMS  | 13200.00 |
| JAMES  | 11400.00 |
| FORD   | 36000.00 |
| MILLER | 15600.00 |
+--------+----------+
14 rows in set (0.00 sec)

mysql> select ename,sal*12 yaersal from emp;
+--------+----------+
| ename  | yaersal  |
+--------+----------+
| SIMITH |  9600.00 |
| ALLEN  | 19200.00 |
| WARD   | 15000.00 |
| JONES  | 35700.00 |
| MARTIN | 15000.00 |
| BLAKE  | 34200.00 |
| CLARK  | 29400.00 |
| SCOTT  | 36000.00 |
| KING   | 60000.00 |
| TURNER | 18000.00 |
| ADAMS  | 13200.00 |
| JAMES  | 11400.00 |
| FORD   | 36000.00 |
| MILLER | 15600.00 |
+--------+----------+
14 rows in set (0.00 sec)

mysql> select ename,sal '年薪' from emp;
+--------+---------+
| ename  | 年薪    |
+--------+---------+
| SIMITH |  800.00 |
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| CLARK  | 2450.00 |
| SCOTT  | 3000.00 |
| KING   | 5000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| JAMES  |  950.00 |
| FORD   | 3000.00 |
| MILLER | 1300.00 |
+--------+---------+
14 rows in set (0.00 sec)

mysql> select
    -> empno,ename from emp where sal = 800;
+-------+--------+
| empno | ename  |
+-------+--------+
|  7369 | SIMITH |
+-------+--------+
1 row in set (0.00 sec)

mysql> select empno,ename,loc where sal = 3000;
ERROR 1054 (42S22): Unknown column 'empno' in 'field list'
mysql> select empno,ename,loc from emp where sal = 3000;
ERROR 1054 (42S22): Unknown column 'loc' in 'field list'
mysql> desc emp;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empno    | int         | NO   | PRI | NULL    |       |
| ename    | varchar(10) | YES  |     | NULL    |       |
| job      | varchar(9)  | YES  |     | NULL    |       |
| mgr      | int         | YES  |     | NULL    |       |
| hiredate | date        | YES  |     | NULL    |       |
| sal      | double(7,2) | YES  |     | NULL    |       |
| comm     | double(7,2) | YES  |     | NULL    |       |
| deptno   | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> select empno,ename,job from emp where sal*2=2400;
Empty set (0.00 sec)

mysql> select empno,ename,job from emp where sal = 800;
+-------+--------+-------+
| empno | ename  | job   |
+-------+--------+-------+
|  7369 | SIMITH | CLERK |
+-------+--------+-------+
1 row in set (0.00 sec)

mysql> select empno,ename,job from emp where sal*2 = 1600;
+-------+--------+-------+
| empno | ename  | job   |
+-------+--------+-------+
|  7369 | SIMITH | CLERK |
+-------+--------+-------+
1 row in set (0.00 sec)

mysql> select empno,ename from emp where sal!=800;
+-------+--------+
| empno | ename  |
+-------+--------+
|  7499 | ALLEN  |
|  7521 | WARD   |
|  7566 | JONES  |
|  7654 | MARTIN |
|  7698 | BLAKE  |
|  7782 | CLARK  |
|  7788 | SCOTT  |
|  7839 | KING   |
|  7844 | TURNER |
|  7876 | ADAMS  |
|  7900 | JAMES  |
|  7902 | FORD   |
|  7934 | MILLER |
+-------+--------+
13 rows in set (0.00 sec)

mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select empno,ename from emp where job = 'CLERK' and 'ANALYST';
Empty set, 1 warning (0.00 sec)

mysql> select empno,ename from emp where job = 'CLERK' or 'ANALYST';
+-------+--------+
| empno | ename  |
+-------+--------+
|  7369 | SIMITH |
|  7876 | ADAMS  |
|  7900 | JAMES  |
|  7934 | MILLER |
+-------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select empno,ename from emp where job = 'CLEERK' or job = 'ANALYST';
+-------+-------+
| empno | ename |
+-------+-------+
|  7788 | SCOTT |
|  7902 | FORD  |
+-------+-------+
2 rows in set (0.00 sec)

mysql> select ename from emp where sal>2500 and empno = 10 or 20;
+--------+
| ename  |
+--------+
| SIMITH |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.01 sec)

mysql> select ename from emp where sal>2500 and empno = 10 or empno = 20;
Empty set (0.01 sec)

mysql> select ename from emp where sal>2500 and deptno = 10 or deptno = 20;
+--------+
| ename  |
+--------+
| SIMITH |
| JONES  |
| SCOTT  |
| KING   |
| ADAMS  |
| FORD   |
+--------+
6 rows in set (0.00 sec)

mysql>  select *  from emp where sal>2500 and deptno = 10 or deptno = 20;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+--------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select * from emp where sal>2500 and (deptno=10 or deptno=20);
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select * from emp where job in ('CLERK','ANALYST');
+-------+--------+---------+------+------------+---------+------+--------+
| empno | ename  | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+---------+------+------------+---------+------+--------+
|  7369 | SIMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT  | ANALYST | 7566 | 1987-04-19 | 3000.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK   | 7788 | 1987-05-23 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+---------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select * from emp where ename like '_0_';
Empty set (0.01 sec)

mysql> select * from emp where ename like '%0%';
Empty set (0.00 sec)

mysql> select * from emp where ename like '_o_';
Empty set (0.00 sec)

mysql> select * from emp where ename like '%o%';
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1987-04-19 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select *  from emp like '%o';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like '%o'' at line 1
mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from emp where ename like '%o';
Empty set (0.00 sec)

mysql> select * from emp where ename like '%T';
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7788 | SCOTT | ANALYST | 7566 | 1987-04-19 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where ename like 'K%';
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
+-------+-------+-----------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where ename like '__R%';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.00 sec)

mysql> creat table t_student(
    -> name varchar(255)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat table t_student(
name varchar(255)
)' at line 1
mysql> creat tablel t_student(name varchar(255));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'creat tablel t_student(name varchar(255))' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bjpowernode        |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use bjpowernode;
Database changed
mysql> select * from bjpowernode;
ERROR 1146 (42S02): Table 'bjpowernode.bjpowernode' doesn't exist
mysql> show tables;
+-----------------------+
| Tables_in_bjpowernode |
+-----------------------+
| dept                  |
| emp                   |
| salgrade              |
+-----------------------+
3 rows in set (0.00 sec)

mysql> create table t_student(
    -> name varchar(255)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into t_student values('wangming');
Query OK, 1 row affected (0.01 sec)

mysql> insert into t_student values('wangliang');
Query OK, 1 row affected (0.01 sec)

mysql> insert into t_student values('wang_guobing');
Query OK, 1 row affected (0.00 sec)

mysql> show tables;
+-----------------------+
| Tables_in_bjpowernode |
+-----------------------+
| dept                  |
| emp                   |
| salgrade              |
| t_student             |
+-----------------------+
4 rows in set (0.00 sec)

mysql> select * from t_student;
+--------------+
| name         |
+--------------+
| wangming     |
| wangliang    |
| wang_guobing |
+--------------+
3 rows in set (0.00 sec)

mysql> select * from t_student where name = '%\_%';
Empty set (0.00 sec)

mysql> select * from t_student where name like '%_%';
+--------------+
| name         |
+--------------+
| wangming     |
| wangliang    |
| wang_guobing |
+--------------+
3 rows in set (0.00 sec)

mysql> select * from t_sutudent where name like '%\_%';
ERROR 1146 (42S02): Table 'bjpowernode.t_sutudent' doesn't exist
mysql> select * from t_student where name like '%\_%';
+--------------+
| name         |
+--------------+
| wang_guobing |
+--------------+
1 row in set (0.00 sec)

mysql> select * from emp order by sal;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from emp order by sal;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from emp order by sal desc;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from order by sal asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by sal asc' at line 1
mysql> select * from emp order by sal asc;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SIMITH | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100.00 |    NULL |     20 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename,empno,job from emp order by sal asc,ename asc;
+--------+-------+-----------+
| ename  | empno | job       |
+--------+-------+-----------+
| SIMITH |  7369 | CLERK     |
| JAMES  |  7900 | CLERK     |
| ADAMS  |  7876 | CLERK     |
| MARTIN |  7654 | SALESMAN  |
| WARD   |  7521 | SALESMAN  |
| MILLER |  7934 | CLERK     |
| TURNER |  7844 | SALESMAN  |
| ALLEN  |  7499 | SALESMAN  |
| CLARK  |  7782 | MANAGER   |
| BLAKE  |  7698 | MANAGER   |
| JONES  |  7566 | MANAGER   |
| FORD   |  7902 | ANALYST   |
| SCOTT  |  7788 | ANALYST   |
| KING   |  7839 | PRESIDENT |
+--------+-------+-----------+
14 rows in set (0.01 sec)

mysql> select * from emp where sal>=1250 and sal<=3000 order by sal desc;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7788 | SCOTT  | ANALYST  | 7566 | 1987-04-19 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
10 rows in set (0.00 sec)

mysql> select ename from emp;
+--------+
| ename  |
+--------+
| SIMITH |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.00 sec)

mysql> select lower(ename) from emp;
+--------------+
| lower(ename) |
+--------------+
| simith       |
| allen        |
| ward         |
| jones        |
| martin       |
| blake        |
| clark        |
| scott        |
| king         |
| turner       |
| adams        |
| james        |
| ford         |
| miller       |
+--------------+
14 rows in set (0.01 sec)

mysql> select upper(ename) from emp;
+--------------+
| upper(ename) |
+--------------+
| SIMITH       |
| ALLEN        |
| WARD         |
| JONES        |
| MARTIN       |
| BLAKE        |
| CLARK        |
| SCOTT        |
| KING         |
| TURNER       |
| ADAMS        |
| JAMES        |
| FORD         |
| MILLER       |
+--------------+
14 rows in set (0.01 sec)

mysql> select lower(ename) as Ename from emo;
ERROR 1146 (42S02): Table 'bjpowernode.emo' doesn't exist
mysql> select lower(ename) as Ename from emp;
+--------+
| Ename  |
+--------+
| simith |
| allen  |
| ward   |
| jones  |
| martin |
| blake  |
| clark  |
| scott  |
| king   |
| turner |
| adams  |
| james  |
| ford   |
| miller |
+--------+
14 rows in set (0.00 sec)

mysql> select * from t_student;
+--------------+
| name         |
+--------------+
| wangming     |
| wangliang    |
| wang_guobing |
+--------------+
3 rows in set (0.00 sec)

mysql> select upper(name) from t_student;
+--------------+
| upper(name)  |
+--------------+
| WANGMING     |
| WANGLIANG    |
| WANG_GUOBING |
+--------------+
3 rows in set (0.00 sec)

mysql> select substr(ename,1,1) from emp;
+-------------------+
| substr(ename,1,1) |
+-------------------+
| S                 |
| A                 |
| W                 |
| J                 |
| M                 |
| B                 |
| C                 |
| S                 |
| K                 |
| T                 |
| A                 |
| J                 |
| F                 |
| M                 |
+-------------------+
14 rows in set (0.00 sec)

mysql> select ename from emp where ename like 'A%';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+
2 rows in set (0.00 sec)

mysql> select ename from emp where substr(ename,1,1) = 'A';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+
2 rows in set (0.00 sec)

mysql> select ename from emp contact(upper(substr(ename,1,1)),substr(ename,2,length(ename));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(upper(substr(ename,1,1)),substr(ename,2,length(ename))' at line 1
mysql>  select ename from emp concat(upper(substr(ename,1,1)),substr(ename,2,length(ename));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(upper(substr(ename,1,1)),substr(ename,2,length(ename))' at line 1
mysql>  select ename from emp concat(upper(substr(ename,1,1)),substr(ename,2,length(ename)-1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(upper(substr(ename,1,1)),substr(ename,2,length(ename)-1)' at line 1
mysql>  select ename from emp where concat(upper(substr(ename,1,1)),substr(ename,2,length(ename)-1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select concat(upper(substr(ename,1,1)),substr(ename,2,length(name)-1));
ERROR 1054 (42S22): Unknown column 'ename' in 'field list'
mysql> select concat (upper(substr(ename,1,1)),substr(ename,2,length(ename))-1) from emp;
+-------------------------------------------------------------------+
| concat (upper(substr(ename,1,1)),substr(ename,2,length(ename))-1) |
+-------------------------------------------------------------------+
| S-1                                                               |
| A-1                                                               |
| W-1                                                               |
| J-1                                                               |
| M-1                                                               |
| B-1                                                               |
| C-1                                                               |
| S-1                                                               |
| K-1                                                               |
| T-1                                                               |
| A-1                                                               |
| J-1                                                               |
| F-1                                                               |
| M-1                                                               |
+-------------------------------------------------------------------+
14 rows in set, 14 warnings (0.00 sec)

mysql> select concat (upper(substr(ename,1,1)),substr(ename,2,length(ename)-1)) from emp;
+-------------------------------------------------------------------+
| concat (upper(substr(ename,1,1)),substr(ename,2,length(ename)-1)) |
+-------------------------------------------------------------------+
| SIMITH                                                            |
| ALLEN                                                             |
| WARD                                                              |
| JONES                                                             |
| MARTIN                                                            |
| BLAKE                                                             |
| CLARK                                                             |
| SCOTT                                                             |
| KING                                                              |
| TURNER                                                            |
| ADAMS                                                             |
| JAMES                                                             |
| FORD                                                              |
| MILLER                                                            |
+-------------------------------------------------------------------+
14 rows in set (0.01 sec)

mysql> select concat(upper(ename,1,1),lower(ename,2,length(name)-1))) from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') from emp' at line 1
mysql> select concat(upper(ename,1,1),lower(ename,2,length(name)-1)) from emp;
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'upper'
mysql> select concat(upper(substr(ename,1,1)),lower(substr(ename,2,length(name)-1))) from emp;
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> select concat(upper(substr(ename,1,1)),lower(substr(ename,2,length(ename)-1))) from emp;
+-------------------------------------------------------------------------+
| concat(upper(substr(ename,1,1)),lower(substr(ename,2,length(ename)-1))) |
+-------------------------------------------------------------------------+
| Simith                                                                  |
| Allen                                                                   |
| Ward                                                                    |
| Jones                                                                   |
| Martin                                                                  |
| Blake                                                                   |
| Clark                                                                   |
| Scott                                                                   |
| King                                                                    |
| Turner                                                                  |
| Adams                                                                   |
| James                                                                   |
| Ford                                                                    |
| Miller                                                                  |
+-------------------------------------------------------------------------+
14 rows in set (0.00 sec)

mysql> select length(ename) from emp;
+---------------+
| length(ename) |
+---------------+
|             6 |
|             5 |
|             4 |
|             5 |
|             6 |
|             5 |
|             5 |
|             5 |
|             4 |
|             6 |
|             5 |
|             5 |
|             4 |
|             6 |
+---------------+
14 rows in set (0.00 sec)

mysql>
