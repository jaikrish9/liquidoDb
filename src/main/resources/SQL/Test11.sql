--liquibase formatted sql

--changeset JK:create_table_test11
--comment: testing comments
create  table  test11 (  
id  int  primary  key,  
name  varchar(255)
);
--rollback drop table test11;


--changeset anair:create_genre_table
create table genre (
    id number not null,
    name varchar(100) not null,
    CONSTRAINT "genre_pk" PRIMARY KEY (ID)
)
TABLESPACE ${TABLESPACE}
LOGGING;

GRANT SELECT,UPDATE,INSERT,DELETE ON genre to ${APP_USER};
GRANT SELECT ON genre to ${RO_USER};

--rollback drop table genre cascade constraints purge;

--changeset anair:genre_uk1
CREATE UNIQUE INDEX genre_uk1 ON genre (name) 
TABLESPACE ${TABLESPACE}

--rollback drop index genre_uk1;
-------------------------------------------------

--changeset anair:create_director_table
create table director (
    id number not null,
    name varchar(100) not null,
    CONSTRAINT "director_pk" PRIMARY KEY (ID)
)
TABLESPACE ${TABLESPACE}
LOGGING;

GRANT SELECT,UPDATE,INSERT,DELETE ON director to ${APP_USER};
GRANT SELECT ON director to ${RO_USER};

--rollback drop table director cascade constraints purge;

--changeset anair:dev_values context:dev
insert into config_values values ('devkey1', 'devval1');
insert into config_values values ('devkey2', 'devval2');
-----------
--changeset anair:prod_values context:prod
insert into config_values values ('prodkey1', 'prodval1');
insert into config_values values ('prodkey2', 'prodval2');
-----------
--changeset anair:qa_values context:qa
insert into config_values values ('qakey1', 'qaval1');
insert into config_values values ('qakey2', 'qaval2');
-----------

