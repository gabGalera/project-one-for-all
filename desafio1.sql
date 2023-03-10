DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
    plano VARCHAR(200) NOT NULL,
    valor_plano FLOAT(3, 2),
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  );

  INSERT INTO SpotifyClone.plano(plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);
  
  CREATE TABLE SpotifyClone.usuario(
      usuario VARCHAR(200) NOT NULL,
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plano_id INT,
      FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
  );

  INSERT INTO SpotifyClone.usuario(usuario, plano_id)
  VALUES
    ('Barbara Liskov', 1),
    ('Robert Cecil Martin', 1),
    ('Ada Lovelace', 2),
    ('Martin Fowler', 2),
    ('Sandi Metz', 2),
	('Paulo Freire', 3),
    ('Bell Hooks', 3),
    ('Christopher Alexander', 4),
    ('Judith Butler', 4),
    ('Jorge Amado', 4);

  CREATE TABLE SpotifyClone.artista(
      artista VARCHAR(200) NOT NULL,
      artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
	);
  
  INSERT INTO SpotifyClone.artista(artista)
  VALUES
    ("Beyoncé"),
	("Queen"),
	("Elis Regina"),
	("Baco Exu do Blues"),
	("Blind Guardian"),
	("Nina Simone");
        
	CREATE TABLE SpotifyClone.albuns(
	albuns VARCHAR(200) NOT NULL,
	albuns_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artista_id INT,
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
	);
  
	INSERT INTO SpotifyClone.albuns(albuns_id, albuns, artista_id)
	VALUES
		(1, "Renaissance", 1),
		(2, "Jazz", 2),
		(3, "Hot Space", 2),
		(4, "Falso Brilhante", 3),
		(5, "Vento de Maio", 3),
		(6, "QVVJFA?", 4),
		(7, "Somewhere Far Beyond", 5),
		(8, "I Put A Spell On You", 6);

CREATE TABLE SpotifyClone.cancoes(
		  cancoes VARCHAR(200) NOT NULL,
		  cancoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      albuns_id INT,
      duracao_segundos INT,
      FOREIGN KEY (albuns_id) REFERENCES albuns(albuns_id)
  );
  
  INSERT INTO SpotifyClone.cancoes(cancoes, cancoes_id, albuns_id, duracao_segundos)
  VALUES
	("BREAK MY SOUL", 1, 1, 279),
	("VIRGO’S GROOVE", 2, 1, 369),
	("ALIEN SUPERSTAR", 3, 1, 116),
	("Don’t Stop Me Now", 4, 2, 203),
	("Under Pressure", 5, 3, 152),
	("Como Nossos Pais", 6, 4, 105),
	("O Medo de Amar é o Medo de Ser Livre", 7, 5, 207),
	("Samba em Paris", 8, 6, 267),
	("The Bard’s Song", 9, 7, 244),
	("Feeling Good", 10, 8, 100);
    
  CREATE TABLE SpotifyClone.historico_de_reproducoes(
      historico_de_reproducoes VARCHAR(200) NOT NULL,
      data_reproducao DATETIME NOT NULL,
      usuario_id INT,
      cancoes_id INT,
      CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id),
		  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
		  FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
  );
  
  INSERT INTO SpotifyClone.historico_de_reproducoes(historico_de_reproducoes, data_reproducao, usuario_id, cancoes_id)
  VALUES
    ("Samba em Paris", "2022-02-28 10:45:55",  1, 8),
	("VIRGO’S GROOVE", "2020-05-02 05:30:35", 	1, 2),
	("Feeling Good", "2020-03-06 11:22:33",	1, 10),
	("Feeling Good", "2022-08-05 08:05:17",	2, 10),
	("O Medo de Amar é o Medo de Ser Livre", "2020-01-02 07:40:33",	2, 7),
	("Feeling Good",	"2020-11-13 16:55:13", 	3, 10),
	("VIRGO’S GROOVE",	"2020-12-05 18:38:30",	3, 2),
	("Samba em Paris",	"2021-08-15 17:10:10", 	4, 8),
	("Samba em Paris",	"2022-01-09 01:44:33", 	5, 8),
	("Under Pressure",	"2020-08-06 15:23:43",	5, 5),
	("O Medo de Amar é o Medo de Ser Livre", "2017-01-24 00:31:17",	6, 7),
	("BREAK MY SOUL", "2017-10-12 12:35:20", 6, 1),
	("Don’t Stop Me Now", "2011-12-15 22:30:49", 7, 4),
	("Don’t Stop Me Now", "2012-03-17 14:56:41", 8, 4),
	("The Bard’s Song", "2022-02-24 21:14:22", 9, 9),
	("ALIEN SUPERSTAR", "2015-12-13 08:30:22", 10, 3);
        
	CREATE TABLE SpotifyClone.seguindo_artista(
      usuario_id INT,
      artista_id INT,
      CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
		  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
		  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
	);

    INSERT INTO SpotifyClone.seguindo_artista(usuario_id, artista_id)
	VALUES
		(1, 1),
		(1, 2),
		(1, 3),
		(2 ,1),
		(2, 3),
		(3, 2),
		(4, 4),
		(5, 5),
		(5, 6),
		(6, 6),
		(6, 1),
		(7, 6),
		(9, 3),
		(10, 2);

		