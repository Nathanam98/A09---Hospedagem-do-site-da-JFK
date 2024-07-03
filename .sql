CREATE TABLE pessoa (
    id_motorista INT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE carro (
    renavam INT PRIMARY KEY,
    placa VARCHAR(20),
    modelo VARCHAR(100),
    ano INT
);

CREATE TABLE acidente (
    numero_ocorrencia INT PRIMARY KEY,
    data DATE,
    local VARCHAR(255)
);

CREATE TABLE pertence (
    id_motorista INT,
    renavam INT,
    FOREIGN KEY (id_motorista) REFERENCES pessoa(id_motorista),
    FOREIGN KEY (renavam) REFERENCES carro(renavam),
    PRIMARY KEY (id_motorista, renavam)
);

CREATE TABLE participacao (
    id_motorista INT,
    renavam INT,
    numero_ocorrencia INT,
    valor_dano REAL,
    FOREIGN KEY (id_motorista) REFERENCES pessoa(id_motorista),
    FOREIGN KEY (renavam) REFERENCES carro(renavam),
    FOREIGN KEY (numero_ocorrencia) REFERENCES acidente(numero_ocorrencia),
    PRIMARY KEY (id_motorista, renavam, numero_ocorrencia)
);




a) 11-6-7-2-5-9-4

b) 8-12-10-15-20-16-25

c)3-5-7-6-4-9-17-22-20

