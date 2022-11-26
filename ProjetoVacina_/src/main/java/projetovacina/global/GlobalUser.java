package projetovacina.global;

import projetovacina.models.Usuario;

public class GlobalUser {
	
	private static Usuario user;
	
	private GlobalUser() {}
	
	public static Usuario getInstacia() {
		if(user == null) {
			user = new Usuario();
		}
		return user;
	}
}
