insert into cstb_debug_users select distinct module, 'Y','SALMAN' from cstb_debug_users;

commit;

savepoint before_updating_salman_user;

update cstb_debug_users set debug = 'Y' where user_id = 'SALMAN';

commit;

select distinct debug from cstb_debug_users where user_id = 'SALMAN';

rollback to before_updating_salman_user;

select distinct debug from cstb_debug_users where user_id = 'SALMAN';

