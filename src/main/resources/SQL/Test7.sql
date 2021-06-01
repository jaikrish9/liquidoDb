--liquibase formatted sql

--changeset JK:create_table_test7
--comment: testing comments runOnChange:true
create  table  test7  (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test7;