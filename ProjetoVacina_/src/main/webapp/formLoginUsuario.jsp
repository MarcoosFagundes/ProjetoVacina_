<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
</head>
<body>
	<div>
		<form action="controllerUsuario" method="post">

		<label>Login: </label>
		<input type="text" name="login"/>
		<br/>
		
		<label>Senha: </label>
		<input type="password" name="senha"/>
		<br/>
		
		<a class="btn btn-danger btn-sm" href=formMenuPrincipal.jsp> Entrar</a>
		
		<a class="btn btn-danger btn-sm" href=formCadastroUsuario.jsp> Novo Usuário</a>
	
	</form>
	</div>
</body>
</html>