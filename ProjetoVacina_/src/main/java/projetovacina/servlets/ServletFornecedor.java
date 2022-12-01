package projetovacina.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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

	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FornecedorDao dao = new FornecedorDao();
		long fornecedorid = Long.parseLong(request.getParameter("id"));
		
		Fornecedor f = dao.findById(Fornecedor.class, fornecedorid).get();
		if(f == null) {
			f.setInativo(true);
			dao.update(f);
			response.sendRedirect("formMenuFornecedor.jsp");
		}
		else {
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Erro inesperado');");
			pw.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("formMenuPrincipal.jsp");
			rd.include(request, response);
		}
		
		
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
