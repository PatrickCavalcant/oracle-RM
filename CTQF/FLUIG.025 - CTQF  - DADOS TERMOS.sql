SELECT 
	A.NOME AS FUNCIONARIO, 
	P.CPF,
	P.CARTIDENTIDADE AS RG,
	B.NOME AS FUNCAO
	
FROM PFUNC A

INNER JOIN PPESSOA P ON
	A.CODPESSOA = P.CODIGO
INNER JOIN PFUNCAO B ON
	A.CODFUNCAO = B.CODIGO
WHERE A.CODCOLIGADA = 3
AND A.CHAPA = :CHAPA