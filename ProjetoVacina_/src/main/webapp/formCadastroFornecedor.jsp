<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastro de Fornecedor</title>
</head>
<body>
	<div>
	<form action="controllerFornecedor" method="post">
	
		<label>Nome: </label>
		<input type="text" name="nome"/>
		<br/>
		
		<label>CNPJ: </label>
		<input type="text" name="cnpj"/>
		<br/>
		
		<label>Rua: </label>
		<input type="text" name="endereco_rua"/>
		<br/>
		
		<label>Número: </label>
		<input type="text" name="endereco_numero"/>
		<br/>
		
		<label>Bairro: </label>
		<input type="text" name="endereco_bairro"/>
		<br/>
		
		<input type="submit" value="salvar"/>
	
	</form>
	</div>
</body>
</html>