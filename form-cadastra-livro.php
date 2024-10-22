<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Cadastro</title>
    <link rel="stylesheet" href="form-cadastra-leitores.css">
</head>
<body>
    <h1>CADASTRO DE LIVROS</h1>
    <form action="cadastra-livros.php" method="post">
        <div>
            <label for="Titulo">Titulo:</label>
            <input type="text" id="Titulo" name="Titulo" />
        </div>
        <div>
            <label for="Autor">Autor:</label>
            <input type="text" id="Autor" name="Autor" /> 
        </div>
        <div>
            <label for="Editora">Editora:</label>
            <input type="text" id="Editora" name="Editora" /> 
        </div>
        <div>
            <label for="Sinopse">Sinopse:</label>
            <input type="text" id="Sinopse" name="Sinopse" /> 
        </div>
        <div>
            <label for="AnoPublicacao">Ano de Publicação:</label>
            <input type="text" id="AnoPublicacao" name="AnoPublicacao" /> 
        </div>
        <div>
            <label for="Genero">Gênero:</label>
            <input type="text" id="Genero" name="Genero" /> 
        </div>
        <div>
            <label for="Paginas">Páginas:</label>
            <input type="text" id="Paginas" name="Paginas" /> 
        </div>
            <button type="submit">Cadastrar</button>
        </div>

    </form>
    <a href="index.html"><button>Voltar</button></a>





</body>
</html>