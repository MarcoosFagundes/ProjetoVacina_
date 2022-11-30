<%@page import="projetovacina.dao.VacinasDao"%>
<%@page import="java.util.List"%>
<%@page import="projetovacina.dao.Dao"%>
<%@page import="projetovacina.dao.FornecedorDao"%>
<%@page import="projetovacina.models.Fornecedor"%>
<%@page import="projetovacina.models.Vacinas"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista de Fornecedores</title>
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
        <a style="color: white; font-size: 22px; margin-right: 50px" class="nav-link active" href="formMenuFornecedor.jsp">Lista de Fornecedores</a>
      </div>
      <div class="div">
      	<a style="color: white; font-size: 22px;" class="nav-link active" href="formLoginUsuario.jsp">Logout</a>
      </div>
    </div>
  </div>
</nav>
<%
	FornecedorDao dao = new FornecedorDao();
	List<Fornecedor> fornecedores = dao.findAll(Fornecedor.class);
%>
<div style="margin-top: 110px; margin-left: 25px; margin-right: 45px;">
<table class="table table-hover">
  <thead class="table-dark">
	<tr>
      <th scope="col">Nome Fornecedor</th>
      <th scope="col">CNPJ</th>
      <th scope="col">Cidade</th>
      <th scope="col">Estado</th>
    </tr>
  </thead>
  <tbody>
  	 <%
	 	for(Fornecedor f:fornecedores){
	 %>
	 <tr>
      <td><%=f.getNome()%></td>
      <td><%=f.getCnpj()%></td>
      <td><%=f.getEndereco().getCidade()%></td> 
      <td><%=f.getEndereco().getEstado().name()%></td> 
      <td><a type="button" href="formUpdateFornecedor.jsp?id=<%=f.getId() %>" class="btn btn-success">Editar</a></td>
      <td><a type="button" href="<%=request.getContextPath()%>/controllerFornecedor?fornecedorid=<%=f.getId() %>" class="btn btn-danger">Excluir</a></td>
      </tr>
    <%
	 	}
    %>
  </tbody>
</table>
</div>
</body>
</html>