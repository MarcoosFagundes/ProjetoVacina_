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

@WebServlet({ "/ServletFornecedor", "/controllerFornecedor" })
public class ServletFornecedor extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletFornecedor() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FornecedorDao dao = new FornecedorDao();
		long fornecedorid = Long.parseLong(request.getParameter("fornecedorid"));
		Fornecedor delfornecedor = dao.findById(Fornecedor.class, fornecedorid).get();
		
		dao.delete(delfornecedor);
		response.sendRedirect("formMenuPrincipal.jsp");
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
			novoFornecedor.setEndereco(novoEndereco);
			
			
			dao.save(novoFornecedor);
		
		}else {
			long fornecedorid = Long.parseLong(request.getParameter("fornecedorid"));
			Fornecedor fornecedor = dao.findById(Fornecedor.class, fornecedorid).get();
			Endereco endereco = fornecedor.getEndereco();
			
			fornecedor.setNome(request.getParameter("nome"));
			fornecedor.setCnpj(request.getParameter("cnpj"));
			endereco.setRua(request.getParameter("rua"));
			endereco.setNumero(request.getParameter("numero"));
			endereco.setBairro(request.getParameter("bairro"));
			fornecedor.setEndereco(endereco);
			
			dao.update(fornecedor);
			
		}
		response.sendRedirect("formMenuPrincipal.jsp");
	}

}
