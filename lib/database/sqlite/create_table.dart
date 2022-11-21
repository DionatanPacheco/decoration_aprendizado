const createTableAgenda = '''
CREATE TABLE AGENDA contact(
  id INT  PRIMARY KEY
  ,nome Varchar(200) NOT NULL
  ,data-hora Char(14) NOT NULL
  ,telefone Char(16) NOT NULL
  ,e-mail Varchar(150) NOT NULL
  ,medico Varchar(200) NOT NULL
)
''';

const insert1 = '''
INSERT INTO contact(nome,data-hora,telefone,e-mail,medico)
VALUES('Dionatan','10/12/22-10:20','(51)9 9999 9999', 'dionatan@email', 'Raul Pacheco')
''';
