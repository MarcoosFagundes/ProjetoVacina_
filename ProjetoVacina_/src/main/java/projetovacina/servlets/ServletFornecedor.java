package projetovacina.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projetovacina.dao.FornecedorDao;
import projetovacina.dao.UsuarioDao;
import projetovacina.models.Endereco;
import projetovacina.models.Fornecedor;
import projetovacina.models.Usuario;
import projetovacina.tipoenum.TipoEstadosEnum;

@WebServlet({ "/ServletFornecedor", "/controllerFornecedor" })
public class ServletFornecedor extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletFornecedor() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FornecedorDao dao = new FornecedorDao();
		long fornecedorid = Long.parseLong(request.getParameter("id"));
		dao.Inativar(fornecedorid);

		response.sendRedirect("formMenuFornecedor.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		FornecedorDao dao = new FornecedorDao();
		
		if(request.getParameter("fornecedorid")==null)
		{
			
			Fornecedor novoFornecedor = new Fornecedor();
			Endereco novoEndereco = new Endereco();
			novoFornecedor.setNome(request.getParameter("nome"));
			novoFornecedor.setCnpj(request.getParameter("cnpj"));
			novoEndereco.setRua(request.getParameter("endereco_rua"));
			novoEndereco.setNumero(request.getParameter("endereco_numero"));
			novoEndereco.setBairro(request.getParameter("endereco_bairro"));
			novoEndereco.setCidade(request.getParameter("endereco_cidade"));
			novoEndereco.setEstado(TipoEstadosEnum.valueOf(request.getParameter("endereco_estado")));
			novoFornecedor.setEndereco(novoEndereco);
			
			
			dao.save(novoFornecedor);
		
		}else {
			long fornecedorid = Long.parseLong(request.getParameter("fornecedorid"));
			Fornecedor fornecedor = dao.findById(Fornecedor.class, fornecedorid).get();
			Endereco endereco = fornecedor.getEndereco();
			
			fornecedor.setNome(request.getParameter("nome"));
			fornecedor.setCnpj(request.getParameter("cnpj"));
			endereco.setRua(request.getParameter("endereco_rua"));
			endereco.setNumero(request.getParameter("endereco_numero"));
			endereco.setBairro(request.getParameter("endereco_bairro"));
			endereco.setCidade(request.getParameter("endereco_cidade"));
			endereco.setEstado(TipoEstadosEnum.valueOf(request.getParameter("endereco_estado")));
			fornecedor.setEndereco(endereco);
			
			dao.update(fornecedor);
			
		}
		response.sendRedirect("formMenuFornecedor.jsp");
	}

}
