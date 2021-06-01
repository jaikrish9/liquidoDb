--liquibase formatted sql

--changeset JK:create_table_test6
--comment: testing comments runOnChange:true
create  table  test6  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test6;