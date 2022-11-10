create role yotilla_execute_templates_role;
create role yotilla_superuser_role;
create role yotilla_user_role;
create role yotilla_consumer_role;
 
grant yotilla_consumer_role to yotilla_execute_templates_role;
grant yotilla_consumer_role to yotilla_superuser_role;
grant yotilla_consumer_role to yotilla_user_role;
 
grant yotilla_user_role to yotilla_execute_templates_role;
grant yotilla_user_role to yotilla_superuser_role;
 
grant yotilla_superuser_role to yotilla_execute_templates_role;
 
grant create session to yotilla_execute_templates_role;
grant create session to yotilla_superuser_role;
grant create session to yotilla_user_role;
grant create session to yotilla_consumer_role;
 
grant select on bov to yotilla_superuser_role;
grant select on co to yotilla_superuser_role;
grant select on cov to yotilla_superuser_role;
grant select on dm to yotilla_superuser_role;
grant select on dmv to yotilla_superuser_role;
grant select on dwhsys to yotilla_superuser_role;
grant select on iv to yotilla_superuser_role;
grant select on lz to yotilla_superuser_role;
grant select on lzv to yotilla_superuser_role;
grant select on meta to yotilla_superuser_role;
grant select on st to yotilla_superuser_role;
grant select on stv to yotilla_superuser_role;
 
grant select on bov to yotilla_user_role;
grant select on dmv to yotilla_user_role;
grant select on iv to yotilla_user_role;
grant select on lzv to yotilla_user_role;
 
grant select on dmv to yotilla_consumer_role;


/*
sources on target need additional grants on the schema.
in our example SRC_RETAIL
*/
grant select on SRC_RETAIL to yotilla_user_role;

/*
create user that shall be used while defining the target system in Yotilla.
That user will be granted the appropriate rights.
*/
create user <user_name> identified by <user_password>;
grant yotilla_execute_templates_role to <user_name>;
