package projetovacina.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projetovacina.dao.FornecedorDao;
import projetovacina.dao.FornecedorVacinaDao;
import projetovacina.models.Endereco;
import projetovacina.models.Fornecedor;
import projetovacina.models.FornecedorVacina;
import projetovacina.tipoenum.TipoEstadosEnum;


@WebServlet({ "/ServletFornecedorVacina", "/controllerFornecedorVacina" })
public class ServletFornecedorVacina extends HttpServlet{
	private static final long serialVersionUID = 1L;

    public ServletFornecedorVacina() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FornecedorVacinaDao dao = new FornecedorVacinaDao();
		long fornecedorvacinaid = Long.parseLong(request.getParameter("fornecedorvacinaid"));
		FornecedorVacina delfornecedor = dao.findById(FornecedorVacina.class, fornecedorvacinaid).get();
		
		dao.delete(delfornecedor);
		response.sendRedirect("formMenuFornecedor.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		FornecedorVacinaDao dao = new FornecedorVacinaDao();
		
		if(request.getParameter("fornecedorvacinaid")==null)
		{
			
			FornecedorVacina novoFornecedorVacina = new FornecedorVacina();
			novoFornecedorVacina.setFornecedor(request.getParameter("fornecedor"));
			novoFornecedorVacina.setVacinas(request.getParameter("vacinas"));
			
			
			dao.save(novoFornecedorVacina);
		
		}else {
			long fornecedorvacinaid = Long.parseLong(request.getParameter("fornecedorvacinaid"));
			FornecedorVacina fornecedorVacina = dao.findById(FornecedorVacina.class, fornecedorvacinaid).get();
			
			fornecedorVacina.setFornecedor(request.getParameter("fornecedor"));
			fornecedorVacina.setVacinas(request.getParameter("vacinas"));
			
			dao.update(fornecedorVacina);
			
		}
		response.sendRedirect("formMenuFornecedor.jsp");
	}

}
