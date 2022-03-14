create database if not exists exercicio_licensas;
use exercicio_licensas;
-- -----------------------------------------------------
-- Table lSETOR
-- -----------------------------------------------------
CREATE TABLE lSETOR (
  idSETOR 	INT 		NOT NULL,
  NomeSetor	VARCHAR(30)	NULL,
  PRIMARY KEY (idSETOR)
);


-- -----------------------------------------------------
-- Table lTIPO_EMPRESA
-- -----------------------------------------------------
CREATE TABLE lTIPO_EMPRESA (
  idTIPO_Empresa	INT		NOT NULL,
  DescricaoTipo		VARCHAR(30)	NULL,
  PRIMARY KEY (idTIPO_Empresa)
);


-- -----------------------------------------------------
-- Table lCLIENTE
-- -----------------------------------------------------
CREATE TABLE lCLIENTE (
  idCLIENTE		INT 		NOT NULL,
  idSETOR_FK		INT 		NOT NULL,
  idTIPO_Empresa_FK	INT 		NOT NULL,
  Nome_RazaoSocial	VARCHAR(50)	NULL,
  Endereco		VARCHAR(50)	NULL,
  Cidade		VARCHAR(60)	NULL,
  UF 			CHAR(2) 	NULL,
  CEP 			INT(8) 		NULL,
  PRIMARY KEY (idCLIENTE),
  FOREIGN KEY (idSETOR_FK)		REFERENCES  lSETOR (idSETOR),
  FOREIGN KEY (idTIPO_Empresa_FK)	REFERENCES  lTIPO_EMPRESA (idTIPO_Empresa)
);


-- -----------------------------------------------------
-- Table lSOFTWARE
-- -----------------------------------------------------
CREATE TABLE lSOFTWARE (
  idSOFTWARE	INT 		NOT NULL,
  NomeSoftware	VARCHAR(45)	NULL,
  PRIMARY KEY (idSOFTWARE)
);


-- -----------------------------------------------------
-- Table lVERSAO
-- -----------------------------------------------------
CREATE TABLE lVERSAO (
  idSOFTWARE_FK	INT		NOT NULL,
  Versao	VARCHAR(20)	NOT NULL,
  PRIMARY KEY (idSOFTWARE_FK, Versao),
  FOREIGN KEY (idSOFTWARE_FK)	REFERENCES  lSOFTWARE (idSOFTWARE)
);


-- -----------------------------------------------------
-- Table lLICENCA
-- -----------------------------------------------------
CREATE TABLE lLICENCA (
  NumLicenca		VARCHAR(30)	NOT NULL,
  idCLIENTE_FK		INT 		NOT NULL,
  idSOFTWARE_FK_FK	INT 		NOT NULL,
  Versao_FK 		VARCHAR(20) 	NOT NULL,
  DtAquisicao 		VARCHAR(45) 	NULL,
  ValorAquisicao 	DECIMAL(10,2)	NULL,
  PRIMARY KEY (NumLicenca),
  FOREIGN KEY (idSOFTWARE_FK_FK , Versao_FK)	REFERENCES  lVERSAO (idSOFTWARE_FK , Versao),
  FOREIGN KEY (idCLIENTE_FK)			REFERENCES  lCLIENTE (idCLIENTE)
);
