DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
    plano VARCHAR(200) NOT NULL,
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  );

  INSERT INTO SpotifyClone.plano(plano)
  VALUES
    ('gratuito'),
    ('familiar'),
    ('universitário'),
    ('pessoal');
  
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
