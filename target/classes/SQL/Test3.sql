--liquibase formatted sql

--changeset JK:create_table_test5
--comment: testing comments runOnChange:true
create  table  test5  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test5;