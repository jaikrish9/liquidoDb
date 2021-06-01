--liquibase formatted sql

--changeset JK:create_table_test2
create  table  test2  (  
id  int  primary  key,  
name  varchar(255)
);

--changeset JK:Alter_table_test2_1
alter table test2 add location1 varchar(255) ;

--changeset JK:Alter_table_test2_2
alter table test2 add location2 varchar(255);