<!DOCTYPE html> 
<html lang="pt-br">
 <head>
    <meta charset="utf-8">
    <title> Semana 01 - Exemplo 08 </title>
  </head>
<body>
<h3>Semana 01 - Exemplo 08 - Listagem Geral de Produtos - Usando base64</h3>
<?php
	include_once('conexao.php');
	
	// ajustando a instrução select para ordenar por produto
	$query = mysqli_query($conexao,"select * from vingadores order by ID");

	if (!$query) { 
		die('Query Inválida: ' . @mysqli_error($conexao));  
	}

	echo "<table border='1px'>";
	echo "<tr><th width='30px' align='center'>Id</th><th width='100px'>Nome</th><th width='250px'>País</th><th width='100px'>Email</th><th width='100px'>telefone</th><th width='100px'>Imagem</th><tr>";

	while($dados=mysqli_fetch_array($query)) 
	{
		echo "<tr>";
		echo "<td align='center'> <em>".$dados['ID']."</em></td>";
		echo "<td>". $dados['nome']."</td>";
		echo "<td>". $dados['país']."</td>";
		echo "<td>". $dados['email']."</td>";
		echo "<td>". $dados['cel']."</td>";	
		// buscando a na pasta imagem
		if (empty($dados['foto'])){
			$imagem = 'SemImagem.png';
		}else{
			$imagem = $dados['foto'];
		}
		$ID = base64_encode($dados['ID']);
		echo "<td align='center'><a href='verproduto.php?ID=$ID'><img src='fotos/$imagem' width='350px' heigth='350px'></a>";
		echo "</tr>";
	}
	echo "</table>";
	
	mysqli_close($conexao);
?>
</body>
</html>
