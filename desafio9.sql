SELECT 
	COUNT(H.historico_de_reproducoes),
    U.usuario
FROM 
	SpotifyClone.historico_de_reproducoes AS H
LEFT JOIN
	SpotifyClone.usuario AS U
ON
	H.usuario_id = U.usuario_id
GROUP BY
	H.usuario_id