SELECT
	faturamento_minimo,
    faturamento_maximo,
    faturamento_medio,
    faturamento_total
FROM (
	SELECT 
		MIN(P.valor_plano) AS "faturamento_minimo",
		MAX(P.valor_plano) AS "faturamento_maximo",
		ROUND(AVG(P.valor_plano), 2) AS "faturamento_medio",
		SUM(P.valor_plano) AS "faturamento_total",
		'-' AS AUX
	FROM 
		SpotifyClone.usuario AS U
	LEFT JOIN
		SpotifyClone.plano AS P
	ON
		U.plano_id = P.plano_id
	GROUP BY 
		AUX
) sub
    
