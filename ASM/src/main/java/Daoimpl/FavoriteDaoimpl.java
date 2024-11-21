package Daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.Dao.FavoriteDao;
import com.asm.Entity.Favorite;
import com.asm.Entity.Video;

import Utils.Xjpa;



public class FavoriteDaoimpl implements FavoriteDao{

	EntityManager em = Xjpa.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();
	}
	@Override
	public List<Favorite> finAll() {
		 String jpql = "SELECT f FROM Favorite f";
		    TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		    return query.getResultList();
	}

	@Override
	public Favorite FindById(String id) {
		return em.find(Favorite.class,id);
	}

	@Override
	public void Create(Favorite item) {
		try {
			em.getTransaction().begin(); // bat dau  giao dich (start transaction )
			em.persist(item); // them doi tuong user vao csdl (insert object in database )
			em.getTransaction().commit(); // ket thuc giao dich va luu thay doi (the end transaction and save to change)
		} catch (Exception e) {
			em.getTransaction().rollback(); // Huy bo giao dich neu co loi (if error  cancel transaction )
		}
		
	}

	@Override
	public void Update(Favorite item) {
		try {
			em.getTransaction().begin(); // bat dau  giao dich (start transaction )
			em.merge(item); // sửa đối tượng user với dữ liệu trong co so du lieu (edit User object with data in database )
			em.getTransaction().commit(); // ket thuc giao dich va luu thay doi (the end transaction and save to change)
		} catch (Exception e) {
			em.getTransaction().rollback(); // Huy bo giao dich neu co loi (if error  cancel transaction )
		}
		
	}

	@Override
	public void deleteById(String id) {
		try {
			em.getTransaction().begin(); // bat dau  giao dich (start transaction )
			em.remove(id); // xoa doi tuong user khoi co so du lieu(delete user object out databse )
			em.getTransaction().commit(); // ket thuc giao dich va luu thay doi (the end transaction and save to change)
		} catch (Exception e) {
			em.getTransaction().rollback(); // Huy bo giao dich neu co loi (if error  cancel transaction )
		} 
	}
	@Override
	public List<Video> favoriteVideoByUser(String id) {
		String jpql = "SELECT f.video FROM Favorite f where f.user.id =?1 ";
		TypedQuery<Video> query = em.createQuery(jpql,Video.class);
		query.setParameter(1, id);
		return query.getResultList();
	}

}
