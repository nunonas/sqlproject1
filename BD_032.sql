DROP TABLE IF EXISTS especies_alimento;
DROP TABLE IF EXISTS especies_habitat;
DROP TABLE IF EXISTS aquario_habitat;
DROP TABLE IF EXISTS Lote_Alimento;
DROP TABLE IF EXISTS Fornecedor;
DROP TABLE IF EXISTS Alimento_Tipo;
DROP TABLE IF EXISTS Especies_Individuais;
DROP TABLE IF EXISTS Especies_Agrupadas;
DROP TABLE IF EXISTS Especie;
DROP TABLE IF EXISTS Ordem;
DROP TABLE IF EXISTS Habitat;
DROP TABLE IF EXISTS Aquario;
DROP TABLE IF EXISTS Funcionario_Biologia;
DROP TABLE IF EXISTS Funcionario_Compras;
DROP TABLE IF EXISTS Funcionario_Tecnico;
DROP TABLE IF EXISTS Reporta_A;
DROP TABLE IF EXISTS Funcionarios;

CREATE TABLE Funcionarios (

  id_funcionario INT(9) PRIMARY KEY,
  nome VARCHAR(64),
  nif INT(9) UNIQUE,
  data_nascimento DATE,
  telemovel VARCHAR (16), -- VARCHAR pois é uma coleção de caracteres (no indicativo + ou 00351 os 00 ou + iriam ser ignorados)
  salario DECIMAL(8,2)
);

INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000001, 'Maria Aljubarrota', 123456789, '1980-02-29', '00351914578574', 2355.55);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000002, 'Manuel Ribeiro', 157937659, '1978-03-14', '00351913453456', 1600.43);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000003, 'Teodólio Alcides', 123111789, '1991-07-01', '00351911478578', 1055.55);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000004, 'Tiago Santos', 223457893, '1996-06-06', '00351969362578', 0567.56);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000005, 'Bejamin Rodrigues', 123423567, '1965-06-25', '00351925673859', 1069.04);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000006, 'Bernardo José', 217564893, '1989-02-14', '00351935768475', 2345.32);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000007, 'Crisálida Matias', 178456372, '1990-12-31', '00351934674901', 3289.05);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000008, 'Cristina Guerreiro', 195674837, '1990-07-25', '00351925435643', 2450.65);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000009, 'Bernardina Monteiro', 234538610, '1976-04-11', '00351915534765', 1058.45);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000010, 'Bonifácio Montinho', 156389048, '1996-06-15', '00351925476319', 0999.99);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000011, 'Belchior Silva', 275658759, '1985-11-23', '00351965784632', 1324.68);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000012, 'Baltazar Mateus', 186957483, '1959-10-14', '00351912765894', 3423.23);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000013, 'Brenda Pereira', 236442738, '1988-01-18', '00351967584775', 1589.00);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000014, 'Bruna Jornalien', 198573649, '1976-12-23', '00351925463457', 2354.68);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000015, 'Benicio Andrade', 254368568, '1967-08-15', '00351945638492', 1867.95);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000016, 'Betina Loureira', 175648938, '1975-09-28', '00351968472837', 2000.00);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000017, 'Tais Belmira', 231465783, '1991-04-17', '00351915674638', 1564.89);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000018, 'Tania Monteiro', 167583678, '1985-02-24', '00351923457389', 2542.65);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000019, 'Tomas Carvalho', 234523423, '1987-12-17', '00351965784937', 1456.54);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000020, 'Thor Tornmail', 145377898, '1987-05-25', '00351957486859', 1678.43);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000021, 'Túlio Deolinda', 175894037, '1987-12-15', '00351934562859', 1789.43);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000022, 'Talita Martins', 234625849, '1968-01-30', '00351976847392', 3452.86);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000023, 'Tainara Negrais', 134568395, '1996-09-18', '00351965748395', 2314.56);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000024, 'Teolinda Morais', 134525669, '1967-12-31', '00351925473845', 14537.56);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000025, 'Manuela Portais', 234536535, '1957-09-24', '00351933554335', 2345.54);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000026, 'Manuel Portais', 298563743, '1956-06-19', '00351267364758', 1452.64);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000027, 'Maria Minhota', 263264353, '1996-07-27', '00351935748576', 1786.54);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000028, 'Marta Ribeiro', 543523553, '1997-04-21', '00351675839487', 1728.56);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000029, 'Milena Morticia', 657384944, '1998-07-27', '00351744857385', 1342.58);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000030, 'Mauricio Guerreiro', 758375839, '1990-05-16', '00351758395888', 6472.43);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000031, 'Marcos Martins', 567483928, '1996-09-25', '00351678493420', 1234.75);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000032, 'Miguel Rolando', 657839487, '1997-05-19', '00351758493758', 5643.76);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000033, 'Carlos Guerreiro', 568930284, '1997-08-16', '0035916785493', 1675.99);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000034, 'Fernando Morais', 657488293, '1949-06-18', '0035193453623', 4564.98);
INSERT INTO Funcionarios (id_funcionario, nome, nif, data_nascimento, telemovel, salario) VALUES (000000035, 'Faulino Falcato', 235675837, '1867-05-29', '0035196578374', 0687.43);

-- Restrição de integridade: o funcionario supervisiona apenas funcionários do mesmo departamento
CREATE TABLE Reporta_A (

  id_supervisor INT(9),
  id_supervisionado INT(9),
  PRIMARY KEY (id_supervisor, id_supervisionado),
  FOREIGN KEY (id_supervisor) REFERENCES Funcionarios (id_funcionario),
  FOREIGN KEY (id_supervisionado) REFERENCES Funcionarios (id_funcionario)
);

INSERT INTO Reporta_A (id_supervisor, id_supervisionado) VALUES (000000002, 000000005);
INSERT INTO Reporta_A (id_supervisor, id_supervisionado) VALUES (000000001, 000000006);
INSERT INTO Reporta_A (id_supervisor, id_supervisionado) VALUES (000000007, 000000003);
INSERT INTO Reporta_A (id_supervisor, id_supervisionado) VALUES (000000004, 000000008);

-- Restrição de integridade: Funcionário Técnico mantém Aquário condicionado pela sua especialidade
CREATE TABLE Funcionario_Tecnico (

  id_funcionario INT(9) PRIMARY KEY,
  especialidade VARCHAR(32),
  FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id_funcionario) ON DELETE CASCADE
);

INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000003, 'Iluminação');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000004, 'Águas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000017, 'Temperaturas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000018, 'Iluminação');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000021, 'Águas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000019, 'Iluminação');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000024, 'Temperaturas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000020, 'Águas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000022, 'Temperaturas');
INSERT INTO Funcionario_Tecnico (id_funcionario, especialidade) VALUES (000000023, 'Iluminação');

CREATE TABLE Funcionario_Compras (

  id_funcionario INT(9) PRIMARY KEY,
  FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id_funcionario) ON DELETE CASCADE
);

INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000001);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000002);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000025);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000026);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000027);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000028);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000029);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000030);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000031);
INSERT INTO Funcionario_Compras (id_funcionario) VALUES (000000032);

CREATE TABLE Funcionario_Biologia (

  id_funcionario INT(9) PRIMARY KEY,
  FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id_funcionario) ON DELETE CASCADE
);

INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000014);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000005);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000006);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000009);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000010);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000011);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000012);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000013);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000015);
INSERT INTO Funcionario_Biologia (id_funcionario) VALUES (000000016);

-- Tabela inclui associacao com a tabela "Funcionario_Tecnico"
CREATE TABLE Aquario (

  id_aquario INT(3) PRIMARY KEY,
  nome_aquario VARCHAR(32) UNIQUE,
  localizacao VARCHAR(2) UNIQUE,
  capacidade INT(6),
  id_funcionario INT(9) NOT NULL,
  FOREIGN KEY (id_funcionario) REFERENCES Funcionario_Tecnico (id_funcionario) ON DELETE NO ACTION
);

INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (001, 'Azul', 'N', 300, 000000021);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (002, 'Vermelho', 'NE', 4000, 000000003);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (003, 'Amarelo', 'E', 2500, 000000018);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (004, 'Verde', 'SE', 3600, 000000004);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (005, 'Branco', 'S', 80000, 000000024);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (006, 'Rosa', 'SO', 6500, 000000020);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (007, 'Lilás', 'O', 100, 000000017);
INSERT INTO Aquario (id_aquario, nome_aquario, localizacao, capacidade, id_funcionario) VALUES (008, 'Laranja', 'NO', 30000, 000000021);
 

CREATE TABLE Habitat (

  id_habitat INT(4) PRIMARY KEY,
  iluminamento INT(5),
  salinidade INT(2),
  CHECK (salinidade >= 0),
  CHECK (salinidade <= 30),
  pH DECIMAL (4,2),
  CHECK (pH >= 3),
  CHECK (pH <= 10),
  dureza DECIMAL (5,2),
  CHECK ( dureza >= 0),
  CHECK ( dureza <= 500),
  oxigenacao DECIMAL (5,2),
  temperatura DECIMAL (5,2),
  CHECK ( temperatura >= 1),
  CHECK ( temperatura <= 50)
);

INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0001, 256, 30, 5.2, 20.4, 34.6, 25.8);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0002, 489, 15, 7, 250, 12, 45);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0003, 120, 10, 5.6, 400, 10.03, 30);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0004, 500, 29.5, 3.6, 200, 9.06, 25);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0005, 250, 12.5, 9.9, 499, 45, 32);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0006, 1659, 1.5, 8.5, 10, 22.43, 2);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0007, 400, 5.4, 7.4, 150, 34, 15);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0008, 200, 25, 6.4, 354, 12.6, 25);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0009, 300, 30, 3, 333, 33, 33);
INSERT INTO Habitat (id_habitat, iluminamento, salinidade, pH, dureza, oxigenacao, temperatura) VALUES (0010, 40, 4, 4.44, 444, 4.4, 44);

-- Tabela inclui associacao com a tabela "Funcionario_Biologia"
CREATE TABLE Ordem (

  id_ordem INT(5) PRIMARY KEY,
  nome_ordem VARCHAR(32) UNIQUE,
  id_funcionario INT(9) NOT NULL,
  FOREIGN KEY (id_funcionario) REFERENCES Funcionario_Biologia (id_funcionario) ON DELETE NO ACTION
);

INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0001, 'samoniformes', 000000014);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0002, 'squamata', 000000005);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0003, 'testudines', 000000006);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0004, 'crocodila', 000000009);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0005, 'sphenodonta', 000000011);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0006, 'monotremata', 000000012);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0007, 'marsupialia', 000000013);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0008, 'gorgonacea', 000000015);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0009, 'scorpionida', 000000016);
INSERT INTO Ordem (id_ordem, nome_ordem, id_funcionario) VALUES (0010, 'aranea', 000000010);

-- Tabela inclui associacao com a tabela "Ordem"
CREATE TABLE Especie (

  id_cientifico VARCHAR(64) PRIMARY KEY,
  nome_comum VARCHAR(32) UNIQUE,
  alimento_preferido VARCHAR(32),
  qt_diaria_total_alimento DECIMAL(5,2), 
  reino VARCHAR(32) NOT NULL,
  filo VARCHAR(32) NOT NULL,
  classe VARCHAR(32) NOT NULL,
  familia VARCHAR(32) NOT NULL,
  genero VARCHAR(32) NOT NULL,
  id_ordem INT(5) NOT NULL,
  FOREIGN KEY (id_ordem) REFERENCES Ordem (id_ordem) ON DELETE NO ACTION
);

INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Carcharias Taurus', 'Tubarão Touro', 'Carne', 30, 'Animalia', 'Chordata', 'Chondrichthyes', 'Odontaspididae', 'Carcharias', 0001);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Betta splendens', 'combatente', 'camarao', 0.50, 'Animalia', 'Chordata', 'Osteichthyes', 'Osphronemidae', 'Betta', 0002);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Xiphophorus maculatus', 'plati', 'camarao seco', 0.30, 'Animalia', 'Chordata', 'Osteichthyes', 'Poeciliidae', 'Xiphophorus', 0003);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Xiphophorus hellerii', 'espada', 'zebra em fondue', 50, 'Animalia', 'Chordata', 'Actinopterygii', 'Poeciliidae', 'Xiphophorus', 0004);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Gymnocorymbus ternetzi', 'tetris preto', 'marinada de lamejinha', 0.25, 'Animalia', 'Chordata', 'Actinopterygii', 'Characidae', 'Gymnocorymbus', 0005);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Corydoras aeneus', 'aeneus', 'Avestruz', 40, 'Animalia', 'Chordata', 'Actinopterygii', 'Callichthyidae', 'Corydoras', 0006);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Corydora Paleatus', 'paleatus', 'lasagna', 1, 'Animalia', 'Chordata', 'Actinopterygii', 'Callichthyidae', 'Corydoras', 0007);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Botia Macracanthus', 'botia palhaço', 'perignon', 2, 'Animalia', 'Chordata', 'Actinopterygii', 'Cobitidae', 'Botia', 0008);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Botia Modesta', 'botia nadadeira laranja', 'caracois', 30, 'Animalia', 'Chordata', 'Actinopterygii', 'Cobitidae', 'Botia', 0009);
INSERT INTO Especie (id_cientifico, nome_comum, alimento_preferido, qt_diaria_total_alimento, reino, filo, classe, familia, genero, id_ordem) VALUES ('Salminus Brasiliensis', 'pequeno salmao', 'estujao', 25, 'Animalia', 'Chordata', 'Actinopterygii', 'Characidae', 'Salminus', 0010);

-- Tabela inclui associação com a tabela "Especie" e tabela "Aquario"
CREATE TABLE Especies_Agrupadas (

  id_grupo INT(5),
  data_nascimento DATE,
  numero_elementos INT(4),
  id_cientifico VARCHAR(64),
  id_aquario  INT(3),
  PRIMARY KEY (id_grupo, id_cientifico), -- id_grupo chave fraca
  FOREIGN KEY (id_cientifico) REFERENCES Especie (id_cientifico) ON DELETE CASCADE,
  FOREIGN KEY (id_aquario) REFERENCES Aquario (id_aquario) ON DELETE CASCADE
);

INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00001, '2010-10-05', 3, 'Carcharias Taurus', 001);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00002, '2012-12-12', 30, 'Betta splendens', 002);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00003, '2015-01-01', 25, 'Betta splendens', 003);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00004, '2016-04-03', 40, 'Salminus Brasiliensis', 004);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00005, '2014-05-09', 10, 'Salminus Brasiliensis', 005);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00006, '2000-04-06', 200, 'Botia Modesta', 001);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00007, '1999-05-04', 29, 'Botia Modesta', 002);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00008, '2006-06-06', 60, 'Corydora Paleatus', 007);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00009, '2007-06-07', 40, 'Corydora Paleatus', 006);
INSERT INTO Especies_Agrupadas (id_grupo, data_nascimento, numero_elementos, id_cientifico, id_aquario) VALUES (00010, '2009-07-08', 50, 'Gymnocorymbus ternetzi', 008);

-- Tabela inclui associação com a tabela "Especie" e tabela "Aquario"
CREATE TABLE Especies_Individuais (

  id_individual INT(6),
  nome_personalizado VARCHAR(16),
  id_cientifico VARCHAR(64),
  id_aquario INT(3),
  PRIMARY KEY (id_individual, id_cientifico), -- id_individual chave fraca
  FOREIGN KEY (id_cientifico) REFERENCES Especie (id_cientifico) ON DELETE CASCADE,
  FOREIGN KEY (id_aquario) REFERENCES Aquario (id_aquario) ON DELETE CASCADE
);

INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000001, 'Maria', 'Carcharias Taurus', 001);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000002, 'Alberta', 'Carcharias Taurus', 001);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000003, 'Rodriga', 'Xiphophorus maculatus', 004);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000004, 'jorge', 'Xiphophorus maculatus', 005);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000005, 'Mika', 'Xiphophorus hellerii', 006);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000006, 'Jorgina', 'Xiphophorus hellerii', 002);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000007, 'Ricardo', 'Corydoras aeneus', 005);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000008, 'Joao', 'Corydoras aeneus', 003);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000009, 'Pedro', 'Betta splendens', 007);
INSERT INTO Especies_Individuais (id_individual, nome_personalizado, id_cientifico, id_aquario) VALUES (000010, 'Nuno', 'Betta splendens', 008);


CREATE TABLE Alimento_Tipo (

  id_alimento INT(3) PRIMARY KEY,
  temperatura DECIMAL(5,2),
  humidade DECIMAL(5,2),
  unidade_medida VARCHAR(4),
  custo_medio DECIMAL(5,2),
  quantidade_mes INT(4)
);

INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (001, 30, 1, 'kg', 3, 400);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (002, 20, 2, 'L', 5, 300);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (003, 50, 3, 'ml', 20, 500);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (004, 50, 3 , 'kg', 20, 450);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (005, 20, 5, 'L', 10, 600);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (006, 40, 2, 'L', 20, 400);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (007, 10, 3, 'Kg', 60, 20);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (008, 20, 4, 'L', 32, 10);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (009, 10, 5, 'ml', 400, 10);
INSERT INTO Alimento_Tipo (id_alimento, temperatura, humidade, unidade_medida, custo_medio, quantidade_mes) VALUES (010, 40, 20, 'L', 30, 30);

CREATE TABLE Fornecedor (

  nif INT(9) PRIMARY KEY,
  id_fornecedor VARCHAR(32) UNIQUE,
  telefone VARCHAR(16), -- VARCHAR pois é uma coleção de caracteres (no indicativo 00351 os 00 iriam ser ignorados)
  morada VARCHAR(64)
);

INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999999, 'jorgina e filhos Lda.', '00351215647839', 'Rua das faias, lote 84U, Zimbabue');  
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999998, 'Enlatados e filhos Lda.', '00351768594836', 'Rua das faias, lote 84U, Moscavide');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999997, 'Coraçoes e tripas Lda.', '00351543675849', 'Rua das faias, lote 84U, Lisboa');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999996, 'Amores perfeitos Lda.', '00351234675890', 'Rua das faias, lote 84U, Mocambique');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999995, 'Quem ve tripas ve tudo Lda.', '00351876543678', 'Rua das faias, lote 84U, Alemanha');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999994, 'Santos e enlatados Lda.', '00351887665778', 'Rua das faias, lote 84U, pragal');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999993, 'Cusquices e marotos Lda.', '00351775566488', 'Rua das faias, lote 84U, Setubal');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999992, 'Sem sal Lda.', '00351789654332', 'Rua das faias, lote 84U, Zurique');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999991, 'cash and carry', '00351213456787', 'Rua das faias, lote 84U, italia');
INSERT INTO Fornecedor (nif, id_fornecedor, telefone, morada) VALUES (999999989, 'queijos e mimos', '00351876546738', 'Rua das faias, lote 84U, Munique');

-- Tabela inclui as associações com as tabelas "Funcionario_Compras", "Fornecedor" e "Alimento_Tipo"
CREATE TABLE Lote_Alimento (

  id_lote VARCHAR(10) PRIMARY KEY,
  quantidade_lote INT(4), -- quilos
  custo_lote DECIMAL(8,2),
  data_aquisicao DATE,
  prazo_validade DATE,
  id_alimento INT(3) NOT NULL,
  nif INT(9) NOT NULL,
  id_funcionario INT(9) NOT NULL,
  FOREIGN KEY (id_alimento) REFERENCES Alimento_Tipo (id_alimento) ON DELETE NO ACTION,
  FOREIGN KEY (nif) REFERENCES Fornecedor (nif) ON DELETE NO ACTION,
  FOREIGN KEY (id_funcionario) REFERENCES Funcionario_Compras (id_funcionario) ON DELETE NO ACTION
);

INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000001, 25, 1250.25, '2016-10-06', '2017-02-25', 004, 999999996, 000000028);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000002, 5, 250.99, '2016-08-10', '2016-11-20', 010, 999999991, 000000002);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000003, 10, 300, '2014-03-05', '2016-11-30', 003, 999999989, 000000001);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000004, 25, 1115.95, '2015-04-12', '2017-05-11', 001, 999999994, 000000030);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000005, 20, 450.10, '2013-12-20', '2014-02-10', 005, 999999992, 000000027);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000006, 35, 1299.99, '2016-10-31', '2017-04-25', 004, 999999996, 000000029);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000007, 15, 850, '2016-09-25', '2017-09-18', 002, 999999993, 000000031);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000008, 12, 340.15, '2011-01-03', '2011-04-28', 008, 999999999, 000000026);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000009, 15, 250.25, '2016-03-07', '2016-05-23', 009, 999999997, 000000025);
INSERT INTO Lote_Alimento (id_lote, quantidade_lote, custo_lote, data_aquisicao, prazo_validade, id_alimento, nif, id_funcionario) VALUES (0000000010, 5, 150.50, '2016-11-02', '2017-01-15', 007, 999999998, 000000032);


-- Associação entre as tabelas Aquario e Habitat (no EA, corresponde à associação 'contém')
CREATE TABLE aquario_habitat (

  id_aquario INT(3),
  id_habitat INT(4),
  adequacao DECIMAL(5,2),
  PRIMARY KEY (id_aquario,id_habitat),
  FOREIGN KEY (id_aquario) REFERENCES Aquario (id_aquario),
  FOREIGN KEY (id_habitat) REFERENCES Habitat (id_habitat)
);

INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (002, 0004, 56.8);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (004, 0009, 85.9);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (001, 0006, 95.7);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (008, 0008, 37);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (003, 0007, 26.5);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (008, 0010, 66.9);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (005, 0001, 99);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (007, 0003, 36.2);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (005, 0005, 76.1);
INSERT INTO aquario_habitat (id_aquario, id_habitat, adequacao) VALUES (006, 0002, 85.8);

-- Associação entre as tabelas Especie e Habitat (no EA, corresponde à associação 'possuem')
CREATE TABLE especies_habitat (

  id_cientifico VARCHAR(32),
  id_habitat  INT(4),
  PRIMARY KEY (id_habitat, id_cientifico),
  FOREIGN KEY (id_habitat) REFERENCES Habitat (id_habitat),
  FOREIGN KEY (id_cientifico) REFERENCES Especie (id_cientifico)
);

INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Xiphophorus maculatus', 0005);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Corydoras aeneus', 0001);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Carcharias Taurus', 0004);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Betta splendens', 0007);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Salminus Brasiliensis', 0002);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Corydora Paleatus', 0010);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Xiphophorus hellerii', 0008);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Gymnocorymbus ternetzi', 0006);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Botia Modesta', 0003);
INSERT INTO especies_habitat (id_cientifico, id_habitat) VALUES ('Botia Macracanthus', 0009);

-- Associação entre as tabelas Especie e Alimento_Tipo (no EA, corresponde à associação 'consomem')
CREATE TABLE especies_alimento (

  id_cientifico VARCHAR(32),
  id_alimento INT(3),
  quantidade_diaria DECIMAL(5,2),
  PRIMARY KEY (id_cientifico, id_alimento),
  FOREIGN KEY (id_cientifico) REFERENCES Especie (id_cientifico),
  FOREIGN KEY (id_alimento) REFERENCES Alimento_Tipo (id_alimento)
);

INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Botia Modesta', 002, 30);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Corydora Paleatus', 005, 1);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Carcharias Taurus', 001, 15);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Botia Macracanthus', 009, 2);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Xiphophorus maculatus', 007, 0.30);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Corydoras aeneus', 010, 40);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Salminus Brasiliensis', 008, 25);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Xiphophorus hellerii', 006, 50);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Betta splendens', 004, 0.50);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Gymnocorymbus ternetzi', 003, 0.25);
INSERT INTO especies_alimento (id_cientifico, id_alimento, quantidade_diaria) VALUES ('Carcharias Taurus', 002, 15); -- exemplo representativo de uma espécie que consome mais do que um tipo de alimento

-- RI1: Funcionário técnico mantém aquário condicionado pela sua especialidade
-- RI2: Funcionário supervisor só supervisiona Funcionários do mesmo departamento
-- RI3: Funcionarios do departmento de informática e contabilidade são considerados funcionários
-- RI4: 0<=salinidade<=30
-- RI5: 3<=pH<=10
-- RI6: 0<=dureza<=500
-- RI7: 1<=temperatura<=50
-- RI8: Quantidades são dadas em Kg
-- RI9: Capacidade dos aquários é dada em litros
-- RI10: A soma dos vários tipos de alimento consumidos diariamente por uma espécie é igual à quantidade diária consumida por essa mesma espécie




