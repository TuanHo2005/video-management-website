package Daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.Dao.VideoDao;
import com.asm.Entity.Video;

import Utils.Xjpa;



public class VideoImpl implements VideoDao{

	EntityManager em = Xjpa.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();
	}
	@Override
	public List<Video> finAll() {
		String jpql = "SELECT v FROM Video v";
		TypedQuery<Video> query = em.createQuery(jpql,Video.class);
		return query.getResultList(); // lay danh sach  ket qua tu truy van (result list from the query)
	}

	@Override
	public Video FindById(String id) {
		return em.find(Video.class,id);
	}

	@Override
	public void Create(Video item) {
		try {
			em.getTransaction().begin(); // bat dau  giao dich (start transaction )
			em.persist(item); // them doi tuong user vao csdl (insert object in database )
			em.getTransaction().commit(); // ket thuc giao dich va luu thay doi (the end transaction and save to change)
		} catch (Exception e) {
			em.getTransaction().rollback(); // Huy bo giao dich neu co loi (if error  cancel transaction )
		}
		
	}

	@Override
	public void Update(Video item) {
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
		Video video = FindById(id);
		try {
			video.setActive(false);
			em.getTransaction().begin(); // bat dau  giao dich (start transaction )
			em.merge(video); // xoa doi tuong user khoi co so du lieu(delete user object out databse )
			em.getTransaction().commit(); // ket thuc giao dich va luu thay doi (the end transaction and save to change)
		} catch (Exception e) {
			em.getTransaction().rollback(); // Huy bo giao dich neu co loi (if error  cancel transaction )
		}
		
	}
	@Override
	public String NewID() {
		String jpql = "SELECT u FROM Video u order by u.id desc";
		TypedQuery<Video> query = em.createQuery(jpql,Video.class);
		query.setMaxResults(1);
		Video video = query.getSingleResult(); //VID00000001
		String id = video.getId();
		String prefix = id.substring(0,3); // U02 -> U 
		String numberPart = id.substring(3); 
        String newNumberPart = String.format("%08d", Integer.parseInt(numberPart) + 1);
        String result = prefix + newNumberPart;
		return result;
	}
	public static void main(String[] args) {
		VideoDao vDao = new VideoImpl();
		String id = vDao.NewID();
		System.out.println(id);
	}

}
