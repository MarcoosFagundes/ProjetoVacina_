<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cadastro de Usuário</title>
</head>
<body>
	<div>
	<form action="controllerUsuario" method="post">
	
		<label>Nome: </label>
		<input type="text" name="nome"/>
		<br/>
		
		<label>Login: </label>
		<input type="text" name="login"/>
		<br/>
		
		<label>Senha: </label>
		<input type="password" name="senha"/>
		<br/>
		
		<input type="submit" value="salvar"/>
	
	</form>
	</div>
</body>
</html>