
create database clinica_psicologia;
use clinica_psicologia;
show tables;
create table clinica ( 
	nome VARCHAR(40) NOT NULL,
	CNPJ BIGINT NOT NULL,
	Endereço VARCHAR(40) NOT NULL,
	email VARCHAR(45) NOT NULL,
	Site VARCHAR(40) NOT NULL,
	telefone BIGINT NOT NULL,
	PRIMARY KEY (CNPJ)
	);
     
create table paciente (
	nome VARCHAR(30) NOT NULL,
	CPF BIGINT NOT NULL,
	email VARCHAR(30) NOT NULL,
	Endereço VARCHAR(30) NOT NULL,
    telefone BIGINT NOT NULL,
    PRIMARY KEY (CPF)  
    );

    
create table Psicologo (
	nome VARCHAR(40) NOT NULL,
	CRP BIGINT NOT NULL,
    Matricula BIGINT NOT NULL,
	email VARCHAR(40) NOT NULL,
    PRIMARY KEY (CRP)
    );
 
CREATE TABLE Agendamento (
	Id BIGINT not null,
    Data DATE NOT NULL,
	Paciente VARCHAR(100) NOT NULL,
	Psicologo VARCHAR(100) NOT NULL,
	Status VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Pagamento (
  Id BIGINT not null,
  Paciente VARCHAR(100) NOT NULL,
  Data DATE NOT NULL,
  FormaPagamento VARCHAR(50) NOT NULL,
  Valor DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (Id)
);
 
INSERT INTO clinica (nome, CNPJ, Endereço, email, Site, telefone) 
VALUES ('Foco Psicologia', '90537564000150', 'Rua Ildefonso,277-Joaquim', 'Foco_Psicologia@gmail.com', 'Foco_Clinica.com', '8591043321');


       
INSERT ignore INTO Paciente (Nome, CPF, Email, Endereço, Telefone)
VALUES 
  ('Rafaela Rocha Goncalves', '44734343866', 'RafaelaRocha@gmail.com', 'Rua Morada Nova - CE', '8898682150'),
  ('Estevan Barros Sousa', '44734343867', 'EstevanBarrSous@gmail.com', 'Rua Camila Bezerra - CE', '8895356666'),
  ('Carla Melo Azevedo', '36210805620', 'CarlaMelAzeved@gmail.com', 'Rua Manuel Monteiro - CE', '8596605867'),
  ('Beatrice Martins Costa', '12344635041', 'BeatriceMartins@gmail.com', 'Rua do Cajueiro - CE', '8591216958'),
  ('Marcelo Lima Santos', '86215975320', 'MarceloLimaSantos@gmail.com', 'Avenida das Palmeiras - CE', '8899857463'),
  ('Amanda Oliveira Costa', '29584751040', 'AmandaOliveira@gmail.com', 'Rua das Flores - CE', '8591234567'),
  ('Lucas Almeida Barbosa', '41753289601', 'LucasAlmeidaBar@gmail.com', 'Rua do Sol - CE', '8896325418'),
  ('Juliana Souza Rodrigues', '56481273023', 'JulianaSouza@gmail.com', 'Avenida dos Ventos - CE', '8597778889'),
  ('Diego Silva Alves', '78903218456', 'DiegoSilvaAlves@gmail.com', 'Rua da Paz - CE', '8891234567'),
  ('Carolina Santos Lima', '32109745312', 'CarolinaSLima@gmail.com', 'Rua das Margaridas - CE', '8595556666'),
  ('Gabriel Oliveira Castro', '65431208749', 'GabrielOCastro@gmail.com', 'Avenida dos Coqueiros - CE', '8896667778'),
  ('Larissa Costa Pereira', '47859271036', 'LarissaCPereira@gmail.com', 'Rua das Águias - CE', '8593456789'),
  ('Fernando Alves Santos', '14785236901', 'FernandoASantos@gmail.com', 'Avenida do Mar - CE', '8891234567'),
  ('Bianca Lima Gomes', '78932165407', 'BiancaLimaGomes@gmail.com', 'Rua das Estrelas - CE', '8599876543'),
  ('Rodrigo Sousa Santos', '45601237890', 'RodrigoSSantos@gmail.com', 'Rua das Borboletas - CE', '8896541234'),
  ('Mariana Oliveira Ribeiro', '78945612330', 'MarianaORibeiro@gmail.com', 'Avenida das Rosas - CE', '8591234567'),
  ('Felipe Santos Costa', '32165498760', 'FelipeSCosta@gmail.com', 'Rua dos Lírios - CE', '8899876543'),
  ('Vanessa Pereira Lima', '65478932106', 'VanessaPLima@gmail.com', 'Rua dos Girassóis - CE', '8596543210'),
  ('Ricardo Lima Oliveira', '32165498745', 'RicardoLOliveira@gmail.com', 'Avenida das Orquídeas - CE', '8891234567'),
  ('Isabela Rodrigues Almeida', '65432178907', 'IsabelaRAlmeida@gmail.com', 'Rua dos Cravos - CE', '8597894561'),
  ('Gustavo Oliveira Souza', '78965432107', 'GustavoOSouza@gmail.com', 'Avenida das Violetas - CE', '8894567890'),
  ('Sandra Castro Rocha', '45698732104', 'SandraCRocha@gmail.com', 'Rua dos Ipês - CE', '8591234567'),
  ('Paulo Almeida Lima', '98765432109', 'PauloALima@gmail.com', 'Avenida dos Jasmim - CE', '8899876543'),
  ('Mariana Oliveira Lima', '12398745603', 'MarianaOLima@gmail.com', 'Rua das Begônias - CE', '8596543210'),
  ('Fernando Rodrigues Silva', '98712365407', 'FernandoRSilva@gmail.com', 'Avenida dos Crisântemos - CE', '8891234567'),
  ('Carolina Sousa Almeida', '32165498745', 'CarolinaSAlmeida@gmail.com', 'Rua das Margaridas - CE', '8597894561'),
  ('Lucas Costa Lima', '65432178907', 'LucasCLima@gmail.com', 'Avenida das Azaleias - CE', '8897894561'),
  ('Mariana Castro Oliveira', '78965432106', 'MarianaCOliveira@gmail.com', 'Rua das Camélias - CE', '8596547890'),
  ('Gabriel Lima Souza', '12398765403', 'GabrielLSouza@gmail.com', 'Avenida das Hortências - CE', '8896543210'),
  ('Fernanda Almeida Costa', '98765432109', 'FernandaACosta@gmail.com', 'Rua das Magnólias - CE', '8591234567'),
  ('André Silva Lima', '12345678903', 'AndreSLima@gmail.com', 'Avenida das Dálias - CE', '8899876543'),
  ('Juliana Oliveira Santos', '98765432107', 'JulianaOSantos@gmail.com', 'Rua das Petúnias - CE', '8594567890'),
  ('Carlos Sousa Lima', '65412378906', 'CarlosSLima@gmail.com', 'Avenida das Violetas - CE', '8896543210'),
  ('Isabella Almeida Costa', '12345678902', 'IsabellaACosta@gmail.com', 'Rua das Orquídeas - CE', '8591234567'),
  ('Ricardo Oliveira Lima', '98765432109', 'RicardoOLima@gmail.com', 'Avenida das Rosas - CE', '8897894561'),
  ('Bruna Silva Castro', '12345678902', 'BrunaSCastro@gmail.com', 'Rua das Margaridas - CE', '8596543210'),
  ('Leonardo Lima Souza', '98765432109', 'LeonardoLSouza@gmail.com', 'Avenida das Begônias - CE', '8891234567'),
  ('Larissa Castro Oliveira', '12345678903', 'LarissaCOliveira@gmail.com', 'Rua das Azaleias - CE', '8597894561'),
  ('Felipe Almeida Silva', '98765432109', 'FelipeASilva@gmail.com', 'Avenida das Camélias - CE', '8896547890'),
  ('Amanda Lima Costa', '12345678902', 'AmandaLCosta@gmail.com', 'Rua das Hortências - CE', '8591234567'),
  ('Gustavo Oliveira Souza', '98765432109', 'GustavoOSouza@gmail.com', 'Avenida das Magnólias - CE', '8899876543'),
  ('Sandra Almeida Lima', '12345678903', 'SandraALima@gmail.com', 'Rua das Dálias - CE', '8594567890'),
  ('Paulo Silva Costa', '98765432109', 'PauloSCosta@gmail.com', 'Avenida das Petúnias - CE', '8896543210'),
  ('Mariana Oliveira Lima', '12345678902', 'MarianaOLima@gmail.com', 'Rua das Violetas - CE', '8591234567'),
  ('Fernando Almeida Silva', '98765432109', 'FernandoASilva@gmail.com', 'Avenida das Orquídeas - CE', '8897894561');


       
       

INSERT INTO Agendamento (Id, Data, Paciente, Psicologo, Status)
VALUES
(01142, '2023-08-10', 'João Silva de Oliveira', 'Felipe Gomes Carvalho', 'Confirmado'),
(01555, '2023-09-12', 'Ana Santos Mesquita', 'Tomás Azevedo Ribeiro', 'Cancelado'),
(01932, '2023-07-15', 'Carlos Souza Braga', 'Isabela Lima Ferreira', 'Pendente'),
(01832, '2023-07-20', 'Mariana Rocha Sousa Linhares', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(01545, '2023-06-22', 'Renato Lima da Cunha', 'Estevan Pereira Cunha', 'Pendente'),
(02341, '2023-06-25', 'Camila Gomes Ribeiro', 'Isabela Lima Ferreira', 'Confirmado'),
(02167, '2023-06-22', 'Italo Fernandes da Costa', 'Estevan Pereira Cunha', 'Confirmado'),
(02136, '2023-06-25', 'Frederico Manoel de Sousa', 'Felipe Gomes Carvalho', 'Confirmado'),
(01233, '2023-06-25', 'Victor Alexandre Ribeiro', 'Estevan Pereira Cunha', 'Confirmado'),
(01462, '2023-07-10', 'Leticia Santos Oliveira', 'Tomás Azevedo Ribeiro', 'Pendente'),
(01642, '2023-08-02', 'Pedro Almeida Lima', 'Isabela Lima Ferreira', 'Confirmado'),
(01786, '2023-09-05', 'Aline Sousa Santos', 'Felipe Gomes Carvalho', 'Cancelado'),
(02213, '2023-07-25', 'Renan Oliveira Lima', 'Estevan Pereira Cunha', 'Pendente'),
(02345, '2023-08-18', 'Viviane Costa Rocha', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(02486, '2023-09-21', 'Henrique Alves Castro', 'Isabela Lima Ferreira', 'Confirmado'),
(02765, '2023-08-02', 'Larissa Souza Barbosa', 'Estevan Pereira Cunha', 'Confirmado'),
(02987, '2023-08-08', 'Guilherme Oliveira Sousa', 'Felipe Gomes Carvalho', 'Confirmado'),
(03156, '2023-09-03', 'Bianca Lima Costa', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(03654, '2023-07-12', 'Marcelo Santos Lima', 'Isabela Lima Ferreira', 'Pendente'),
(04124, '2023-06-30', 'Laura Rodrigues Almeida', 'Estevan Pereira Cunha', 'Pendente'),
(04983, '2023-07-02', 'Gustavo Oliveira Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(05321, '2023-07-05', 'Carolina Silva Sousa', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(05673, '2023-08-14', 'Rafael Almeida Castro', 'Isabela Lima Ferreira', 'Cancelado'),
(05932, '2023-09-10', 'Leticia Oliveira Lima', 'Estevan Pereira Cunha', 'Confirmado'),
(06321, '2023-07-18', 'Matheus Costa Santos', 'Felipe Gomes Carvalho', 'Pendente'),
(06743, '2023-08-22', 'Amanda Lima Souza', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(07129, '2023-07-25', 'Ricardo Sousa Rocha', 'Isabela Lima Ferreira', 'Confirmado'),
(07564, '2023-06-28', 'Fernanda Almeida Silva', 'Estevan Pereira Cunha', 'Confirmado'),
(08032, '2023-08-04', 'Pedro Oliveira Lima', 'Felipe Gomes Carvalho', 'Confirmado'),
(08567, '2023-09-07', 'Bruna Santos Costa', 'Tomás Azevedo Ribeiro', 'Pendente'),
(09245, '2023-08-11', 'Lucas Almeida Sousa', 'Isabela Lima Ferreira', 'Confirmado'),
(09932, '2023-06-24', 'Vitoria Castro Oliveira', 'Estevan Pereira Cunha', 'Confirmado'),
(10234, '2023-07-19', 'Gustavo Lima Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(10986, '2023-08-27', 'Sofia Oliveira Sousa', 'Tomás Azevedo Ribeiro', 'Cancelado'),
(11786, '2023-07-28', 'Rodrigo Santos Lima', 'Isabela Lima Ferreira', 'Pendente'),
(12654, '2023-08-05', 'Amanda Almeida Costa', 'Estevan Pereira Cunha', 'Confirmado'),
(13576, '2023-09-14', 'Rafaela Sousa Almeida', 'Felipe Gomes Carvalho', 'Confirmado'),
(14532, '2023-07-17', 'Lucas Lima Souza', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(15586, '2023-08-23', 'Gabriela Oliveira Costa', 'Isabela Lima Ferreira', 'Confirmado'),
(16789, '2023-09-28', 'Arthur Silva Lima', 'Estevan Pereira Cunha', 'Confirmado'),
(17987, '2023-07-29', 'Julia Almeida Castro', 'Felipe Gomes Carvalho', 'Pendente'),
(19232, '2023-08-16', 'Thiago Sousa Rocha', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(20567, '2023-09-30', 'Mariana Oliveira Lima', 'Isabela Lima Ferreira', 'Confirmado'),
(21987, '2023-07-26', 'Gustavo Almeida Costa', 'Estevan Pereira Cunha', 'Confirmado'),
(23456, '2023-08-09', 'Larissa Castro Sousa', 'Felipe Gomes Carvalho', 'Confirmado'),
(24987, '2023-09-05', 'Enzo Lima Costa', 'Tomás Azevedo Ribeiro', 'Pendente'),
(26543, '2023-07-23', 'Carolina Oliveira Sousa', 'Isabela Lima Ferreira', 'Confirmado'),
(28234, '2023-08-19', 'Lucas Almeida Lima', 'Estevan Pereira Cunha', 'Confirmado'),
(29987, '2023-09-16', 'Laura Santos Oliveira', 'Felipe Gomes Carvalho', 'Confirmado'),
(31786, '2023-07-22', 'Gustavo Sousa Rocha', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(33654, '2023-08-15', 'Maria Almeida Castro', 'Isabela Lima Ferreira', 'Cancelado'),
(35676, '2023-09-02', 'Pedro Lima Souza', 'Estevan Pereira Cunha', 'Pendente'),
(37897, '2023-07-13', 'Luiza Oliveira Lima', 'Felipe Gomes Carvalho', 'Confirmado'),
(40232, '2023-08-28', 'Thiago Sousa Almeida', 'Tomás Azevedo Ribeiro', 'Pendente'),
(42654, '2023-09-20', 'Maria Alves Castro', 'Isabela Lima Ferreira', 'Confirmado'),
(45132, '2023-07-31', 'João Lima Costa', 'Estevan Pereira Cunha', 'Confirmado'),
(47786, '2023-08-26', 'Isabella Santos Oliveira', 'Felipe Gomes Carvalho', 'Confirmado'),
(50567, '2023-09-09', 'Lucas Almeida Lima', 'Tomás Azevedo Ribeiro', 'Pendente'),
(53456, '2023-08-07', 'Ana Castro Sousa', 'Isabela Lima Ferreira', 'Confirmado'),
(56432, '2023-09-03', 'Pedro Oliveira Costa', 'Estevan Pereira Cunha', 'Confirmado'),
(59587, '2023-07-30', 'Laura Santos Lima', 'Felipe Gomes Carvalho', 'Confirmado'),
(62987, '2023-08-30', 'Gabriel Sousa Rocha', 'Tomás Azevedo Ribeiro', 'Pendente'),
(66454, '2023-09-17', 'Maria Almeida Castro', 'Isabela Lima Ferreira', 'Confirmado'),
(70032, '2023-07-16', 'Thiago Sousa Lima', 'Estevan Pereira Cunha', 'Confirmado'),
(73786, '2023-08-24', 'Lucas Almeida Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(77765, '2023-09-27', 'Laura Santos Oliveira', 'Tomás Azevedo Ribeiro', 'Pendente'),
(81987, '2023-07-21', 'Gustavo Almeida Lima', 'Isabela Lima Ferreira', 'Confirmado'),
(86432, '2023-08-13', 'Maria Alves Castro', 'Estevan Pereira Cunha', 'Confirmado'),
(91156, '2023-09-11', 'Pedro Lima Costa', 'Felipe Gomes Carvalho', 'Pendente'),
(96054, '2023-07-14', 'Luiza Oliveira Lima', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(101111, '2023-08-29', 'Thiago Sousa Almeida', 'Isabela Lima Ferreira', 'Confirmado'),
(106432, '2023-09-22', 'Maria Alves Castro', 'Estevan Pereira Cunha', 'Confirmado'),
(111987, '2023-07-27', 'Gustavo Lima Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(117764, '2023-08-31', 'Laura Santos Oliveira', 'Tomás Azevedo Ribeiro', 'Cancelado'),
(123865, '2023-07-24', 'Lucas Almeida Lima', 'Isabela Lima Ferreira', 'Pendente'),
(130288, '2023-08-16', 'Maria Almeida Castro', 'Estevan Pereira Cunha', 'Confirmado'),
(137043, '2023-09-13', 'Pedro Oliveira Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(143140, '2023-07-20', 'Laura Santos Lima', 'Tomás Azevedo Ribeiro', 'Confirmado'),
(149587, '2023-08-08', 'Gustavo Almeida Sousa', 'Isabela Lima Ferreira', 'Pendente'),
(156384, '2023-09-06', 'Maria Alves Castro', 'Estevan Pereira Cunha', 'Confirmado'),
(163551, '2023-08-25', 'Pedro Lima Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(171108, '2023-09-29', 'Laura Santos Oliveira', 'Tomás Azevedo Ribeiro', 'Pendente'),
(179075, '2023-07-23', 'Lucas Almeida Lima', 'Isabela Lima Ferreira', 'Confirmado'),
(187482, '2023-08-17', 'Maria Almeida Castro', 'Estevan Pereira Cunha', 'Confirmado'),
(196359, '2023-09-15', 'Pedro Oliveira Costa', 'Felipe Gomes Carvalho', 'Confirmado'),
(205736, '2023-07-19', 'Laura Santos Lima', 'Tomás Azevedo Ribeiro', 'Pendente'),
(215643, '2023-08-21', 'Gustavo Almeida Sousa', 'Isabela Lima Ferreira', 'Confirmado'),
(226120, '2023-09-18', 'Maria Alves Castro', 'Estevan Pereira Cunha', 'Confirmado');
  

INSERT INTO Pagamento (Id, Paciente, Data, FormaPagamento, Valor)
VALUES 
  (01345, 'Marcelo Lima Santos', '2023-01-10', 'Dinheiro', 120.00),
  (01346, 'Amanda Oliveira Costa', '2023-01-12', 'Cartão', 80.50),
  (01347, 'Lucas Almeida Barbosa', '2023-01-15', 'Dinheiro', 150.00),
  (01348, 'Juliana Souza Rodrigues', '2023-02-01', 'Pix', 90.25),
  (01349, 'Diego Silva Alves', '2023-02-05', 'Cartão', 200.00),
  (01350, 'Carolina Santos Lima', '2023-02-10', 'Pix', 175.80),
  (01351, 'Gabriel Oliveira Castro', '2023-02-15', 'Dinheiro', 130.00),
  (01352, 'Larissa Costa Pereira', '2023-03-02', 'Cartão', 220.75),
  (01353, 'Fernando Alves Santos', '2023-03-05', 'Dinheiro', 95.50),
  (01354, 'Bianca Lima Gomes', '2023-03-10', 'Pix', 180.00),
  (01355, 'Rodrigo Sousa Santos', '2023-03-15', 'Cartão', 120.50),
  (01356, 'Mariana Oliveira Ribeiro', '2023-04-01', 'Pix', 150.25),
  (01357, 'Felipe Santos Costa', '2023-04-05', 'Dinheiro', 90.00),
  (01358, 'Vanessa Pereira Lima', '2023-04-10', 'Cartão', 200.75),
  (01359, 'Ricardo Lima Oliveira', '2023-04-15', 'Pix', 180.50),
  (01360, 'Isabela Rodrigues Almeida', '2023-05-02', 'Dinheiro', 120.00),
  (01361, 'Gustavo Oliveira Souza', '2023-05-05', 'Cartão', 160.25),
  (01362, 'Sandra Castro Rocha', '2023-05-10', 'Pix', 190.00),
  (01363, 'Paulo Almeida Lima', '2023-05-15', 'Dinheiro', 100.50),
  (01364, 'Mariana Oliveira Lima', '2023-06-01', 'Cartão', 130.75),
  (01365, 'Fernando Rodrigues Silva', '2023-06-05', 'Pix', 170.00),
  (01366, 'Carolina Sousa Almeida', '2023-06-10', 'Dinheiro', 150.25),
  (01367, 'Rodrigo Lima Souza', '2023-06-15', 'Cartão', 110.50),
  (01368, 'Amanda Costa Castro', '2023-07-02', 'Pix', 140.25),
  (01369, 'Gabriela Lima Souza', '2023-07-05', 'Dinheiro', 140.75),
  (01370, 'Fernanda Almeida Costa', '2023-07-10', 'Cartão', 220.00),
  (01371, 'André Silva Lima', '2023-07-15', 'Pix', 160.50),
  (01372, 'Juliana Oliveira Santos', '2023-08-01', 'Dinheiro', 180.25),
  (01373, 'Carlos Sousa Lima', '2023-08-05', 'Cartão', 120.00),
  (01374, 'Isabella Almeida Costa', '2023-08-10', 'Pix', 150.75),
  (01375, 'Ricardo Oliveira Lima', '2023-08-15', 'Dinheiro', 190.00),
  (01376, 'Bruna Silva Castro', '2023-09-01', 'Cartão', 170.25),
  (01377, 'Leonardo Lima Souza', '2023-09-05', 'Pix', 200.50),
  (01378, 'Larissa Castro Oliveira', '2023-09-10', 'Dinheiro', 130.75),
  (01379, 'Felipe Almeida Silva', '2023-09-15', 'Cartão', 160.00),
  (01380, 'Amanda Lima Costa', '2023-10-01', 'Pix', 180.25),
  (01381, 'Gustavo Oliveira Souza', '2023-10-05', 'Dinheiro', 120.00),
  (01382, 'Sandra Almeida Lima', '2023-10-10', 'Cartão', 140.75),
  (01383, 'Paulo Silva Costa', '2023-10-15', 'Pix', 200.00),
  (01384, 'Mariana Oliveira Lima', '2023-11-01', 'Dinheiro', 150.50),
  (01385, 'Fernando Almeida Silva', '2023-11-05', 'Cartão', 160.25);


  
  drop table Paciente;
  
  select *from psicologo;
