
-- -----------------------------------------------------

-- Table CLIENTE

-- -----------------------------------------------------


CREATE TABLE aCLIENTE (
	CodCli		INT(11)		NOT NULL,
  
	NomeCli 	VARCHAR(50)	NULL,
  
	DtNascimento	DATETIME	NULL,
  
	CPF		VARCHAR(11)	NULL,
  
	PRIMARY KEY (CodCli)
);


-- -----------------------------------------------------

-- Table aCONSULTORINVESTIMENTO

-- -----------------------------------------------------

CREATE TABLE aCONSULTORINVESTIMENTO (

	NumConsultor		INT(11) 	NOT NULL,
  
	NomeConsultor		VARCHAR(30) 	NULL,
  
	Percentual_Comissao	NUMERIC(10,2) 	NULL,
  
	PRIMARY KEY (NumConsultor)
);



-- -----------------------------------------------------

-- Table aTIPOFUNDO

-- -----------------------------------------------------
CREATE TABLE aTIPOFUNDO (

	CodTipoFundo	INT(11)		NOT NULL,
  
	DescrTipoFundo	VARCHAR(30)	NULL,
  
	PRIMARY KEY (CodTipoFundo)
);



-- -----------------------------------------------------

-- Table aFUNDOINVESTIMENTO

-- -----------------------------------------------------

CREATE TABLE aFUNDOINVESTIMENTO (
  
	NumFundo	INT(11)		NOT NULL,
  
	NomeComlFundo	VARCHAR(60)	NULL,
  
	CodTipoFundo	INT(11)		NULL,
  
	DtInicio	DATETIME	NULL,
  
	Ativo_S_N	CHAR(1)		NULL,
  
	PRIMARY KEY (NumFundo),
  
	FOREIGN KEY (CodTipoFundo)
    REFERENCES aTIPOFUNDO (CodTipoFundo)

)
;



-- -----------------------------------------------------

-- Table aAPLICACAO

-- -----------------------------------------------------

CREATE TABLE aAPLICACAO (
	NumAplicacao	INT(11)		NOT NULL,
  
	CodCli		INT(11) 	NULL,
  
	NumFundo	INT(11) 	NULL,
  
	NumConsultor	INT(11) 	NULL,
  
	DtAplicacao	DATETIME 	NULL,
  
	ValorAplicacao	NUMERIC(15,2)	NULL,
  
	PRIMARY KEY (NumAplicacao),
  
	FOREIGN KEY (CodCli)
    	REFERENCES aCLIENTE (CodCli)
,
	FOREIGN KEY (NumConsultor)	REFERENCES aCONSULTORINVESTIMENTO (NumConsultor),
	FOREIGN KEY (NumFundo)
    	REFERENCES aFUNDOINVESTIMENTO (NumFundo)
);
    


