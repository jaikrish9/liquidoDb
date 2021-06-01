--liquibase formatted sql

--changeset JK:create_table_test10
--comment: testing comments 
create  table  test10  (  
		id  int  primary  key,  
		name  varchar(255)
	);
--rollback drop table test10;
	
	
	
	