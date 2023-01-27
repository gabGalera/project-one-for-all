WITH AUX(usuario_id, data_reproducao)AS(
	SELECT
		usuario_id,
        MAX(data_reproducao)
	FROM
		SpotifyClone.historico_de_reproducoes
	GROUP BY
		usuario_id
)

SELECT 
	U.usuario,
  CASE
		WHEN YEAR(H.data_reproducao) >= 2021 THEN "Usuário ativo"
		ELSE "Usuário inativo"
	END AS "status_usuario"
FROM 
	SpotifyClone.usuario AS U
RIGHT JOIN
	AUX AS H
ON
	U.usuario_id=H.usuario_id
ORDER BY
	U.usuario