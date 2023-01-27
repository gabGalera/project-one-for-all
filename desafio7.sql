WITH AUX(artista_id, total_sguidores)AS(
	SELECT * FROM SpotifyClone.seguindo_artista
)

SELECT * FROM AUX;