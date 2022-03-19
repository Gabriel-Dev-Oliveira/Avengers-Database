<html>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title> Semana 01 - Exemplo 08 </title>
<body>
<h3>Semana 01 - Exemplo 08 - Detalhes do Produto</h3>
<?php
	include_once('conexao.php');
	// recuperando a informação da URL
	$id = base64_decode($_GET['id']);
	
	// realizando a pesquisa com o id recebido
	$query = mysqli_query($conexao,"select * from vingadores where ID = $id");

	if (!$query) {
		die('Query Inválida: ' . @mysqli_error($conexao));  
	}

	$dados=mysqli_fetch_array($query);
	
	echo "<table border='1px'><tr><td width='250px'>";
	if (empty($dados['imagem'])){
			$imagem = 'SemImagem.png';
		}else{
			$imagem = $dados['imagem'];
		}
	echo "<img src='foto/$imagem' >";
	echo "</td><td width='400px'>";
	echo "<b>Id: </b>".$dados['id']."<br>";
	echo "<b>nome: </b>".$dados['codigo']."<br>";
	echo "<b>país: </b>".$dados['produto']."<br>";	
	echo "<b>Email: </b>".$dados['descricao']."<br>";	
	echo "<b>tel: </b> R$ ".$dados['valor']."<br>";
	echo "</td></tr></table>";
	
	mysqli_close($conexao);
?>
<br>
<a href="javascript:window.history.go(-1)">Voltar</a>
</body>
</html>
