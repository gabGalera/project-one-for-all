WITH AUX(usuario_id, plano)AS(
	SELECT
		U.usuario_id,
        P.plano
	FROM
		SpotifyClone.usuario AS U
	LEFT JOIN
		SpotifyClone.plano AS P
	ON
		U.plano_id = P.plano_id
	WHERE
		P.plano IN ("gratuito", "pessoal")
)

SELECT
   H.historico_de_reproducoes AS "nome",
   COUNT(AUX.usuario_id) AS "reproducoes"
FROM
	SpotifyClone.historico_de_reproducoes AS H
LEFT JOIN
	AUX
ON
	AUX.usuario_id = H.usuario_id
WHERE
	plano IS NOT NULL
GROUP BY
	nome
ORDER BY
	nome


