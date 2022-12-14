<%@page import="projetovacina.dao.VacinasDao"%>
<%@page import="java.util.List"%>
<%@page import="projetovacina.dao.Dao"%>
<%@page import="projetovacina.dao.FornecedorDao"%>
<%@page import="projetovacina.models.Fornecedor"%>
<%@page import="projetovacina.models.Vacinas"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listar Fornecedores</title>
<style type="text/css">
.div form {
	display: flex;
	justify-content: center;
	margin-top: 35px;
	margin-right: 480px;
}

.div input {
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
	<nav
		style="background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))"
		class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center">
				<div class="navbar-nav">
					<a style="color: white; font-size: 22px; margin-right: 50px"
						class="nav-link active" href="formMenuPrincipal.jsp">Listar Vacinas</a> <a
						style="color: white; font-size: 22px; margin-right: 50px"
						class="nav-link active" href="formCadastroVacinas.jsp">Registrar
						Vacinas</a> <a
						style="color: white; font-size: 22px; margin-right: 50px"
						class="nav-link active" href="formMenuFornecedor.jsp">Listar
						Fornecedores</a> <a
						style="color: white; font-size: 22px; margin-right: 50px"
						class="nav-link active" href="formCadastroFornecedor.jsp">Registrar
						Fornecedores</a>
				</div>
				<div class="div">
					<a style="color: white; font-size: 22px;" class="nav-link active"
						href="formLoginUsuario.jsp">Logout</a>
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
					<th scope="col"></th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Fornecedor f : fornecedores) {
					if(!f.isInativo()){
				%>
				<tr>
					<td><%=f.getNome()%></td>
					<td><%=f.getCnpj()%></td>
					<td><%=f.getEndereco().getCidade()%></td>
					<td><%=f.getEndereco().getEstado().name()%></td>
					<td><a type="button"
						href="formUpdateFornecedor.jsp?id=<%=f.getId()%>"
						class="btn btn-success">Editar</a></td>
					<td><a type="button"
						href="<%=request.getContextPath()%>/controllerFornecedor?id=<%=f.getId()%>"
						class="btn btn-danger">Inativar</a></td>
				</tr>
				<%
					}
				}
				%>
			</tbody>
		</table>
	</div>
	<div style="display: flex;
    justify-content: center;">
		<a style="margin-bottom: 275px; 
		background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))"
		 type="button" class="btn btn-success" href="formMenuFornecedorinativos.jsp">Mostrar Fornecedores Inativos</a>
	</div>
</body>
  <footer
          class="text-center text-lg-start text-white"
          style="background-color: #1c2331"
          >
    <section
             class="d-flex justify-content-between p-4"
             style="background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))"
             >
    </section>
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <div class="row mt-3">
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <h6 class="text-uppercase fw-bold">Vacinas do Markin</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              A empresa Vacinas do Markin tem por objetivo facilitar o controle 
              de vacinas registradas e seus fornecedores, com o intuito de melhorar a qualidade,
              usabilidade, confiablidade dos sistemas fornecidos pela empresa Vacinas do Markin.
            </p>
          </div>

          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <h6 class="text-uppercase fw-bold">Produtos</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              <a href="#!" class="text-white">Vacinas Atenuadas</a>
            </p>
            <p>
              <a href="#!" class="text-white">Vacinas Inativas</a>
            </p>
          </div>
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <h6 class="text-uppercase fw-bold">Links Utilitarios</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              <a href="#!" class="text-white">Doa????o</a>
            </p>
            <p>
              <a href="#!" class="text-white">Ajude os desenvolvedores</a>
            </p>
          </div>
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <h6 class="text-uppercase fw-bold">Contatos</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p><i class="fas fa-home mr-3"></i> Alfenas, MG 2022, BR</p>
            <p><i class="fas fa-envelope mr-3"></i> marcosEmarcus@gmail.com</p>
            <p><i class="fas fa-phone mr-3"></i> (35) 9 1234-5678</p>
          </div>
        </div>
      </div>
    </section>

    <div
         class="text-center p-3"
         style="background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))"
         >
      ?? 2022 Copyright: Marcos and Marcus
      <a class="text-white" href=""
         >Em caso de duvida chame o Ibama</a
        >
    </div>
  </footer>
</html>