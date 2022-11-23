<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastro de Vacinas</title>
</head>
<body>
	<div>
	<form action="controllerVacina" method="post">
	
		<label>Nome: </label>
		<input type="text" name="nome"/>
		<br/>
		
		<label>Quantidade de dose: </label>
		<input type="text" name="qtd_doses"/>
		<br/>
		
		<label>Tipo da Vacina: </label>
		<input type="text" name="tipo"/>
		<br/>
		
		<label>Período de Vencimento: </label>
		<input type="text" name="vencimento"/>
		<br/>
		
		<label>Descrição: </label>
		<input type="text" name="descricao"/>
		<br/>
		
		<label>Fornecedor: </label>
		<input type="text" name="fornecedor"/>
		<br/>
		
		<input type="submit" value="salvar"/>
	
	</form>
	</div>
</body>
</html>