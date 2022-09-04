create database imobiliaria;

use imobiliaria;
CREATE TABLE Usuario (
Senha VARCHAR(20),
NivelAcesso VARCHAR(10),
CodigoUsuario INTEGER PRIMARY KEY,
Email VARCHAR(20),
Telefone VARCHAR(20),
Nome VARCHAR(40),
Login VARCHAR(20)
);

CREATE TABLE ImovelContrato (
Codigo_Imovel INTEGER,
Valor DECIMAL(10),
Situacao VARCHAR(10),
Endereco VARCHAR(50),
Proprietario VARCHAR(30),
Codigo_Contrato INTEGER,
Data_Vencimento DATETIME,
Fiador VARCHAR(40),
Inquilino VARCHAR(40),
Valor_Aluguel DECIMAL(10),
TipoFianca VARCHAR(10),
DataEntrata DATETIME,
DataSaida DATETIME,
TaxaAdm DECIMAL(10),
Codigo_Cliente INTEGER,
PRIMARY KEY(Codigo_Imovel,Codigo_Contrato)
);

CREATE TABLE Cliente (
Codigo_Cliente INTEGER PRIMARY KEY,
Tipo VARCHAR(10),
Nome VARCHAR(40),
Endereco VARCHAR(50),
Telefone VARCHAR(20),
Email VARCHAR(20)
);

ALTER TABLE ImovelContrato ADD FOREIGN KEY(Codigo_Cliente) REFERENCES Cliente (Codigo_Cliente);
