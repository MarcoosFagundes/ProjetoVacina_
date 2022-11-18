<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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
		
		<input type="submit" value="salvar"/>
	
	</form>
	</div>
</body>
</html>