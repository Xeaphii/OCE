/* Formatted on 11/15/2016 5:42:38 PM (QP5 v5.227.12220.39724) */
--Creating in the table space

drop table whoopie;

drop view whoopie;

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
   
   
select * from whoopie;

