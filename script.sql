
-- CREATE TABLE PESSOA(
--    CD_PESSOA INT PRIMARY KEY,
--    DS_PESSOA VARCHAR(60) NOT NULL,
--    DS_ENDERECO VARCHAR(60),
--    DS_BAIRRO VARCHAR(30),
--    DS_CIDADE VARCHAR(30),
--    DS_UF CHAR(2),
--    DS_TELEFONE VARCHAR(15),
--    DS_CELULART VARCHAR(15)
-- );


-- CREATE GENERATOR GEN_AGENDA;
-- SET GENERATOR TO 0;

-- CREATE TRIGGER AGENDA_INCREMENT
-- FOR PESSOA
-- ACTIVE BEFORE INSERT
-- AS
-- BEGIN
--     new.CD_PESSOA = gen_id(GEN_AGENDA, 1);
-- END;

create table teste(id int);
-- drop table teste;

-- restore
-- gbak -c -user "SYSDBA" -pas "19983101" "C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\backupDB\backup.FDK" 
-- "C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\AGENDA.FDB" -REP

-- backup
-- gbak -b -user "SYSDBA" -password "19983101" "C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\AGENDA.FDB"
--  "C:\Users\Desenv4.SEO\Desktop\trabalhos de pesquisa\os024246\backupDB\backup.FDK"