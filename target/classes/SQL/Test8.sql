--liquibase formatted sql

--changeset JK:create_table_test8
--comment: testing comments 
create  table  test8  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test8;