/* Formatted on 1/5/2017 6:47:16 PM (QP5 v5.227.12220.39724) */
CREATE TABLE EMPLOYEE_CHART
(
   EMPLOYEE_ID   NUMBER (7) PRIMARY KEY,
   TITLE         VARCHAR2 (20),
   REPORTS_TO    NUMBER (7)
);


ALTER TABLE EMPLOYEE_CHART
ADD CONSTRAINT fk_heir_key

 FOREIGN KEY(reports_to)REFERENCES
EMPLOYEE_CHART(Employee_id);


INSERT INTO EMPLOYEE_CHART
     VALUES (1, 'CEO       ', NULL);

INSERT INTO EMPLOYEE_CHART
     VALUES (2, 'VP        ', 1);

INSERT INTO EMPLOYEE_CHART
     VALUES (3, 'SVP       ', 1);

INSERT INTO EMPLOYEE_CHART
     VALUES (4, 'CFO       ', 1);

INSERT INTO EMPLOYEE_CHART
     VALUES (5, 'Director 1', 2);

INSERT INTO EMPLOYEE_CHART
     VALUES (6, 'Director 2', 2);

INSERT INTO EMPLOYEE_CHART
     VALUES (7, 'Director 3', 3);

INSERT INTO EMPLOYEE_CHART
     VALUES (8, 'Director 4', 3);

INSERT INTO EMPLOYEE_CHART
     VALUES (9, 'Manager 1 ', 6);

COMMIT;

    SELECT *
      FROM EMPLOYEE_CHART
START WITH employee_id = 1
CONNECT BY PRIOR employee_id = reports_to;

    SELECT *
      FROM EMPLOYEE_CHART
START WITH employee_id = 2
CONNECT BY PRIOR employee_id = reports_to;

    SELECT *
      FROM EMPLOYEE_CHART
     WHERE employee_id <> 1
START WITH employee_id = 1
CONNECT BY PRIOR employee_id = reports_to;


    SELECT DISTINCT *
      FROM EMPLOYEE_CHART
--     WHERE employee_id = 2
--START WITH employee_id = 0
CONNECT BY PRIOR employee_id = reports_to;

SELECT COUNT (*) FROM EMPLOYEE_CHART;


    SELECT LEVEL, title, PRIOR title reports_to
      FROM EMPLOYEE_CHART
START WITH employee_id = 1
CONNECT BY PRIOR employee_id = reports_to;


    SELECT LEVEL, title, PRIOR title reports_to
      FROM EMPLOYEE_CHART
     WHERE employee_id = 1
START WITH employee_id = 1
CONNECT BY PRIOR employee_id = reports_to;


    SELECT *
      FROM employee_chart
START WITH employee_id = 1
CONNECT BY reports_to = PRIOR employee_Id;