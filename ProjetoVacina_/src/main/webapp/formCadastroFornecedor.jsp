<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registro Fornecedor</title>
<style type="text/css">
.gradient-custom {
	background: #6a11cb;
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1));
	background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
</head>
<body>
<form class="vh-100 gradient-custom" action="controllerFornecedor" method="post">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">
            
			<h2>Registro Fornecedor</h2>
				
			<div class="form-outline form-white mb-4">
                <input type="text" class="form-control form-control-lg" placeholder="Nome Fornecedor" name="nome" />
              </div>
              
              <div class="form-outline form-white mb-4">
                <input type="number" class="form-control form-control-lg" placeholder="CNPJ" name="cnpj" />
              </div>
              
               <div class="form-outline form-white mb-4">
                <select type="text" class="form-control form-control-lg" name="endereco_estado">
                	<option value="AC">Acre</option>
			       	<option value="AL">Alagoas</option>
			       	<option value="AP">Amapá</option>
			       	<option value="AM">Amazonas</option>
			       	<option value="BA">Bahia</option>
			       	<option value="CE">Ceará</option>
			       	<option value="DF">Distrito Federal</option>
			       	<option value="ES">Espírito Santo</option>
			       	<option value="GO">Goias</option>
			       	<option value="MA">Maranhão</option>
			       	<option value="MT">Mato Grosso</option>
			       	<option value="MS">Mato Grosso do Sul</option>
			       	<option value="MG">Minas Gerais</option>
			       	<option value="PA">Pará</option>
			       	<option value="PB">Paraíba</option>
			       	<option value="PR">Paraná</option>
			       	<option value="PE">Pernambuco</option>
			       	<option value="PI">Piaui</option>
			       	<option value="RJ">Rio de Janeiro</option>
			       	<option value="RN">Rio Grande do Norte</option>
			       	<option value="RS">Rio Grande doSul</option>
			       	<option value="RO">Rondonia</option>
			       	<option value="RR">Roraima</option>
			       	<option value="SC">Santa Catarina</option>
			       	<option value="SP">São Paulo</option>
			       	<option value="SE">Sergipe</option>
			       	<option value="TO">Tocantins</option>
                </select>
              </div>
              
              <div class="form-outline form-white mb-4">
                <input type="text" class="form-control form-control-lg" placeholder="Cidade" name="endereco_cidade"/>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="text" class="form-control form-control-lg" placeholder="Bairro" name="endereco_bairro"/>
              </div>
              
              <div class="form-outline form-white mb-4">
                <input type="text" class="form-control form-control-lg" placeholder="Rua" name="endereco_rua"/>
              </div>
              
              <div class="form-outline form-white mb-4">
                <input type="text" class="form-control form-control-lg" placeholder="Numero" name="endereco_numero"/>
              </div>

              <input class="btn btn-outline-light btn-lg px-5" type="submit" value="Registrar"/>

            </div>
			<div>
              <p class="mb-0"><a href="formMenuFornecedor.jsp" class="text-white-50 fw-bold">Voltar para Lista de Fornecedores</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>