--liquibase formatted sql

--changeset JK:create_table_test9
--comment: testing comments 
create  table  test9  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test9;