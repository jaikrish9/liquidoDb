--liquibase formatted sql

--changeset JK:create_table_test4
--comment: testing comments runOnChange:true
create  table  test4  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test3;

