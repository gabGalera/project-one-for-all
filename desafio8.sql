SELECT 
	AR.artista AS "artista",
    A.albuns AS "album"
FROM 
	SpotifyClone.albuns AS A
LEFT JOIN
	SpotifyClone.artista AS AR
ON
	A.artista_id = AR.artista_id
WHERE
	AR.artista = "Elis Regina"
ORDER BY
	artista,
    album