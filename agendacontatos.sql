CREATE DATABASE agenda_contatos;

USE agenda_contatos;

CREATE TABLE contatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    grupo ENUM('trabalho', 'escola', 'família', 'amigo') NOT NULL,
    favorito BOOLEAN DEFAULT FALSE
);



INSERT INTO contatos (nome, email, telefone, grupo, favorito) VALUES
('Maria Silva', 'maria.silva@email.com', '1234-5678', 'trabalho', FALSE),
('João Pereira', 'joao.p@gmail.com', '9876-5432', 'escola', TRUE),



SELECT * FROM contatos WHERE grupo = 'trabalho';



SELECT * FROM contatos WHERE favorito = TRUE;



SELECT * FROM contatos WHERE nome LIKE '%Maria%';



UPDATE contatos SET grupo = 'família' WHERE id = 1;
UPDATE contatos SET favorito = TRUE WHERE id = 2;




DELETE FROM contatos WHERE id = 3;