/* Formatted on 11/2/2016 1:19:06 PM (QP5 v5.227.12220.39724) */
drop table testing_for_flashback;

CREATE TABLE testing_for_flashback
(
   account_number   NUMBER,
   branch_code      VARCHAR (3),
   CONSTRAINT pk_101 PRIMARY KEY (account_number)
);

insert into testing_for_flashback values ('123456789','024');

insert into testing_for_flashback values ('223456789','024');

insert into testing_for_flashback values ('323456789','024');

commit;

drop table testing_for_flashback;

select * from user_recyclebin;

select * from testing_for_flashback;

flashback table testing_for_flashback to before drop;

select * from testing_for_flashback;

select * From user_constraints where table_name = UPPER('testing_for_flashback');