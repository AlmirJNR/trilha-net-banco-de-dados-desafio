-- 1
SELECT Nome, Ano FROM Filmes;

-- 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'de volta para o futuro';

-- 4
SELECT * FROM Filmes WHERE Ano = 1997;

-- 5
SELECT * FROM Filmes WHERE Ano > 2000 ORDER BY Ano;

-- 6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7
SELECT Ano, COUNT(Ano) AS 'Quantidade' FROM Filmes GROUP BY Ano ORDER BY 'Quantidade' DESC;

-- 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10
SELECT Nome, Genero FROM Filmes
    INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

-- 11
SELECT Nome, Genero FROM Filmes
    INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero LIKE N'mistério';

-- 12
SELECT Nome, CONCAT_WS(' ', PrimeiroNome, UltimoNome) AS 'Nome Completo', Papel FROM Filmes
    INNER JOIN dbo.ElencoFilme EF ON Filmes.Id = EF.IdFilme
    INNER JOIN dbo.Atores A ON A.Id = EF.IdAtor;