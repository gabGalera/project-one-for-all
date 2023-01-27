SELECT 
	U.usuario,
    CASE
		WHEN YEAR(H.data_reproducao) >= 2021 THEN TRUE
		ELSE FALSE
	END AS "status_usuario"
FROM 
	SpotifyClone.usuario AS U
RIGHT JOIN
	SpotifyClone.historico_de_reproducoes AS H
ON
	U.usuario_id=H.usuario_id
ORDER BY
	U.usuario