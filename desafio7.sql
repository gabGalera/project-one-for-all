WITH AUX(artista_id, artista, total_seguidores)AS(
	SELECT 
		SA.artista_id,
        A.artista,
        COUNT(SA.usuario_id) AS "total_seguidores"
	FROM 
		SpotifyClone.seguindo_artista AS SA
	LEFT JOIN
		SpotifyClone.artista AS A
	ON
		SA.artista_id = A.artista_id
	GROUP BY
		artista_id
)

SELECT 
	AUX.artista AS "artista",
    A.albuns AS "album",
    AUX.total_seguidores AS "seguidores"
FROM 
	SpotifyClone.albuns AS A
LEFT JOIN
	AUX
ON
	A.artista_id = AUX.artista_id
ORDER BY
	seguidores DESC,
    artista,
    album