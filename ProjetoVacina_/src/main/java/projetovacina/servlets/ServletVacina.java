package projetovacina.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projetovacina.dao.UsuarioDao;
import projetovacina.dao.VacinasDao;
import projetovacina.models.Usuario;
import projetovacina.models.Vacinas;
import projetovacina.models.TipoVacinaEnum;

@WebServlet({ "/ServletVacina", "/controllerVacina" })
public class ServletVacina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletVacina() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VacinasDao dao = new VacinasDao();
		long vacinasid = Long.parseLong(request.getParameter("vacinasid"));
		Vacinas delvacinas = dao.findById(Vacinas.class, vacinasid).get();
		
		dao.delete(delvacinas);
		response.sendRedirect("formMenuPrincipal.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		VacinasDao dao = new VacinasDao();
		
		if(request.getParameter("vacinasid")==null)
		{
			
			Vacinas novaVacina = new Vacinas();
			
			novaVacina.setNome(request.getParameter("nome"));
			novaVacina.setQnt_dose(Integer.parseInt(request.getParameter("qtd_doses")));
			novaVacina.setTipo(TipoVacinaEnum.valueOf(request.getParameter("tipo")));
			novaVacina.setPeridoVencimento(request.getParameter("vencimento"));
			novaVacina.setDescricao(request.getParameter("descricao"));
			
			dao.save(novaVacina);
		
		}else {
			long vacinasid = Long.parseLong(request.getParameter("vacinasid"));
			Vacinas vacinas = dao.findById(Vacinas.class, vacinasid).get();
			
			vacinas.setNome(request.getParameter("nome"));
			vacinas.setQnt_dose(Integer.parseInt(request.getParameter("qtd_doses")));
			vacinas.setTipo(TipoVacinaEnum.valueOf(request.getParameter("tipo")));
			vacinas.setPeridoVencimento(request.getParameter("vencimento"));
			vacinas.setDescricao(request.getParameter("descricao"));
			
			dao.update(vacinas);
			
		}
		response.sendRedirect("formMenuPrincipal.jsp");
	}

}
