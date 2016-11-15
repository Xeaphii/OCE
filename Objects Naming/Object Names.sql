/* Formatted on 11/15/2016 5:20:11 PM (QP5 v5.227.12220.39724) */
CREATE TABLE tbl_test$works#
(
   weird$col$names   VARCHAR2 (10),
   weird_col_name    CHAR,
   weird#col#name    VARCHAR2 (20)
);

select * from tbl_test$works#;

create table tbl_fail_attempt(
_test_col varchar2(10)
);

create table _tbl_fail_attempt(
_test_col varchar2(10)
);

create table $tbl_fail_attempt(
_test_col varchar2(10)
);

create table #tbl_fail_attempt(
_test_col varchar2(10)
);

