<%@page import="projetovacina.models.Vacinas"%>
<%@page import="projetovacina.dao.VacinasDao"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Menu Inicial</title>
<style type="text/css">
.div form{
	display: flex;
    justify-content: center;
    margin-top: 35px;
    margin-right: 480px;
}
.div input{
	border-radius: 5px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
<nav style="background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))" class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center">
      <div class="navbar-nav">
        <a style="color: white; font-size: 22px; margin-right: 50px" class="nav-link active" href="formMenuPrincipal.jsp">Inicio</a>
        <a style="color: white; font-size: 22px; margin-right: 50px" class="nav-link active" href="formCadastroVacinas.jsp">Registrar Vacina</a>
        <a style="color: white; font-size: 22px; margin-right: 50px" class="nav-link active" href="formCadastroFornecedor.jsp">Registrar Fornecedor</a>
        <a style="color: white; font-size: 22px; margin-right: 50px" class="nav-link active" href="formCadastroFornecedor.jsp">Lista de Fornecedores</a>
      </div>
      <div class="div">
      	<a style="color: white; font-size: 22px;" class="nav-link active" href="formCadastroFornecedor.jsp">Logout</a>
      </div>
    </div>
  </div>
</nav>
	<div style="display" class="div">
		<form class="form" action="controllerVacina" method="post">
			<input type="text" placeholder="Pesquisar Vacina" name="nome"/>
			<button style="margin-left: 15px;
    border-radius: 5px;">Pesquisar</button>
		</form>
	</div>
<div style="margin-top: 45px;">
<table class="table table-hover">
  <thead class="table-dark">
	<tr>
      <th scope="col">Nome Vacina</th>
      <th scope="col">Numero de Doses</th>
      <th scope="col">Tipo Vacina</th>
      <th scope="col">Periodo Vencimento</th>
    </tr>
  </thead>
  <tbody>
	 <tr>
      <td>Gripe A</td>
      <td>2</td>
      <td>Atenuada</td>
      <td>um ano</td>
      <td><button type="button" class="btn btn-success">Editar</button></td>
      <td><button type="button" class="btn btn-danger">Excluir</button></td>
    </tr>
  </tbody>
</table>
</div>
</body>
</html>