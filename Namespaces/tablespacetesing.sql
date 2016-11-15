/* Formatted on 11/15/2016 6:47:29 PM (QP5 v5.227.12220.39724) */
--Creating in the table space

DROP TABLE whoopie;

DROP VIEW whoopie;

CREATE TABLE whoopie
(
   foo   NUMBER (10),
   bar   VARCHAR2 (10)
);

--trying to create view with same name
--replace will replace table definition no matter  of other object

CREATE OR REPLACE VIEW whoopie
AS
   SELECT * FROM ports;


   --trying to create view with same name

CREATE VIEW whoopie
AS
   SELECT * FROM ports;

-- selecting from table or view

SELECT * FROM whoopie;

CREATE INDEX whoopie
   ON whoopie (foo);


ALTER TABLE whoopie
ADD CONSTRAINT whoopie UNIQUE (bar);


SELECT *
  FROM sys.dba_objects
 WHERE object_name = 'WHOOPIE';

SELECT *
  FROM USER_TAB_PRIVS
 WHERE table_name = 'DBA_OBJECTS' ;
 
 SELECT * FROM dba_objects WHERE object_name LIKE 'V$%';
 
 
 