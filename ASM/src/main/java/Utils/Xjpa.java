package Utils;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
public class Xjpa {
	
		public static EntityManager getEntityManager() {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("ASM");
			
			return factory.createEntityManager();
		}
	}

