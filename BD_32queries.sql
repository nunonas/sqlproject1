-- Bases de Dados - Grupo 32
-- Nuno Soares (43558)
-- Pedro Pereira (46772)
-- Pedro Sena (44591)


-- 1. Localização e nome do aquário onde vive a lontra “Amália”

SELECT A.localizacao AS "Localização Aquario", A.nome AS "Nome Aquário"
FROM Aquario A, Especime EM 
WHERE A.id_aquario = EM.id_aquario AND EM.nome_personalizado = "Amalia" 

-- 2. Nome científico das espécies que habitam no aquário “Bartolomeu Dias”. Pretende-se que o resultado seja ordenado alfabeticamente

SELECT DISTINCT E.nome_cientifico AS "Nome científico espécie"
FROM Aquario A, Especie E, Especime EM
WHERE A.id_aquario = EM.id_aquario AND EM.id_especie = E.id_especie AND A.nome = "Bartolomeu Dias"
ORDER BY E.nome_cientifico ASC

-- 3. Para cada aquário, indicar o número total de espécimes com nome personalizado

SELECT A.nome AS "Nome Aquário", COUNT(DISTINCT EM.nome_personalizado) AS "Número total espécies c/ nome personalizado"
FROM Aquario A, Especime EM
WHERE A.id_aquario = EM.id_aquario AND EM.nome_personalizado IS NOT NULL 
GROUP BY A.nome

-- 4. Nome dos aquarios em que coexistem animais das ordens Hexanchiformes e Torpediniformes

SELECT A.nome AS "Nome Aquário"
FROM Aquario A, Especime EM, Cat_taxonomica Cat, Especie E
WHERE A.id_aquario = EM.id_aquario
    AND Cat.id_cat = E.id_cat
    AND E.id_especie = EM.id_especie
    AND Cat.nome = "Hexanchiformes"
    AND A.id_aquario IN (SELECT A2.id_aquario
                         FROM Aquario A2, Especime EM2, Cat_taxonomica Cat2, Especie E2
                         WHERE A2.id_aquario = EM2.id_aquario
                         AND Cat2.id_cat = E2.id_cat
                         AND E2.id_especie = EM2.id_especie
                         AND Cat2.nome = "Torpediniformes")

-- 5. Nomes cientificos das especies que tem especimes mas nao tem grupos de especimes no oceanario

SELECT DISTINCT E.nome_cientifico AS "Nome científico espécie"
FROM Especie E, Especime EM
WHERE E.id_especie=EM.id_especie AND E.id_especie NOT IN (SELECT GE.id_especie
                                                          FROM Grupo_especime GE)
														  
-- 6. Nomes dos aquarios mais adequados a cada especie. Indique a especie pelo respetivo nome cientifico

SELECT DISTINCT E.nome_cientifico AS "Nome científico espécie", A.nome AS "Nome Aquário"
FROM Aquario A, Especie E, Aquario_Habitat AH
WHERE E.id_habitat = AH.id_habitat AND AH.id_aquario = A.id_aquario and AH.adequacao = (SELECT MAX(AH.adequacao)
																						FROM Aquario_Habitat AH)
																														
-- 7. Indique os nomes das ordens taxonomicas que estao representadas em todos os aquarios do oceanario - por especimes dessas ordens

SELECT Cat.nome AS "Ordem Taxonómica" 
FROM Cat_taxonomica Cat 
WHERE Cat.id_cat IN (SELECT E.id_cat
                     FROM Especie E
                     WHERE NOT EXISTS (SELECT A.id_aquario
                                       FROM Aquario A
                                       WHERE NOT EXISTS (SELECT EM.id_aquario
                                                         FROM Especime EM
                                                         WHERE Cat.id_cat = E.id_cat AND A.id_aquario = EM.id_aquario AND E.id_especie = EM.id_especie)))


-- 8. Para cada aquario, indicar a especie cujo grupo de especimes tem o maior numero de elementos

SELECT A.nome AS "Nome Aquário", E.nome_cientifico AS "Nome científico espécie"
FROM Aquario A, Especie E, Grupo_especime G 
WHERE E.id_especie = G.id_especie AND G.id_aquario = A.id_aquario AND G.n_elementos = (SELECT MAX(G2.n_elementos)
																					   FROM Grupo_especime G2, Aquario A2
																					   WHERE A.id_aquario = G2.id_aquario AND G2.id_aquario = A2.id_aquario)
																					   
																					   
-- 9. Tabela para apresentacao a entrada do oceanario, indicando nomes cientificos, localizacao e nome do aquario, das especies em maior numero nesse aquario 





-- 10. Tendo por base os inserts fornecidos no ficheiro insertE2.sql, traduza para um pedido de dados textual e uma interrogacao SQL/DML o seguinte resultado (imagem no enunciado)

-- Reino, filo, ordem, nome cientifico da especie e nome do aquario onde se encontra cada especime e grupo de especime do oceanario. Indicar o nome personalizado dos especimes ou o numero de elementos de cada grupo de especimes. 

SELECT A.nome AS "Aquario", Cat3.nome AS "Reino", Cat2.nome AS "Filo", Cat1.nome AS "Ordem", E.nome_cientifico AS "Nome cientifico", EM.nome_personalizado AS "Nome Personalizado ou Nº Elementos Grupo" 
FROM Aquario A, Cat_taxonomica Cat1, Cat_taxonomica Cat2, Cat_taxonomica Cat3, Especie E, Especime EM 
WHERE E.id_especie = EM.id_especie AND EM.id_aquario = A.id_aquario AND Cat1.id_cat_pai = Cat2.id_cat AND Cat2.id_cat_pai = Cat3.id_cat AND E.id_cat = Cat1.id_cat 
UNION 
SELECT A.nome AS "Aquario", Cat3.nome AS "Reino", Cat2.nome AS "Filo", Cat1.nome AS "Ordem", E.nome_cientifico AS "Nome cientifico", G.n_elementos AS "Nome Personalizado ou Nº Elementos Grupo" 
FROM Aquario A, Cat_taxonomica Cat1, Cat_taxonomica Cat2, Cat_taxonomica Cat3, Especie E, Grupo_especime G 
WHERE E.id_especie = G.id_especie AND G.id_aquario = A.id_aquario AND Cat1.id_cat_pai = Cat2.id_cat AND Cat2.id_cat_pai = Cat3.id_cat AND E.id_cat = Cat1.id_cat
