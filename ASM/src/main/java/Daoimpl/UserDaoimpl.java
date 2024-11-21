package Daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.Dao.UserDao;
import com.asm.Entity.User;

import Utils.Xjpa;



public class UserDaoimpl implements UserDao{
	EntityManager em = Xjpa.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
	em.close();
	}
	@Override
	public List<User> findAll() {
		String jpql="SELECT o FROM User o WHERE o.isdelete = 'true'";
		TypedQuery<User>query =em.createQuery(jpql,User.class);
		return query.getResultList();
	}

	@Override
	public User findById(String id) {
		
		return em.find(User.class,id);
	}

	@Override
	public int create(User entity) {
		int value = 0;
		try {
			em.getTransaction().begin(); // Bắt đầu transaction
			em.persist(entity); // Thêm đối tượng user vào cơ sở dữ liệu
			em.getTransaction().commit();// Kết thúc transaction và lưu thay đổi
			value++;
		} catch (Exception e) {
			em.getTransaction().rollback();  // Hủy bỏ transaction nếu có lỗi
			value = 0;
		}
		return value;
		
	}

	@Override
	public void update(User entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity); // sửa đối tượng user với dữ liệu trong database 
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void deleteById(String id) {
		User entity = em.find(User.class, id);
		try {
			entity.setIsdelete(false);
			em.getTransaction().begin();
			em.merge(entity); // xóa đối tượng khỏi cơ sở dữ liệu 
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}
	@Override
	public String NewID() {
		String jpql = "SELECT u FROM User u order by u.id desc";
		TypedQuery<User> query = em.createQuery(jpql,User.class);
		query.setMaxResults(1);
		User user = query.getSingleResult();
		String id = user.getId();
		String prefix = id.substring(0, 1); // U02 -> U 
		String numberPart = id.substring(1); 
        String newNumberPart = String.format("%02d", Integer.parseInt(numberPart) + 1);
        String result = prefix + newNumberPart;
		return result;
	}
	@Override
	public User FinduserbyIdOrEmail(String id, String email) {
		String jpql = "SELECT o FROM User o WHERE o.id = :id OR o.email = :email";
		 TypedQuery<User> query = em.createQuery(jpql, User.class);
		 query.setParameter("id", id);
	        query.setParameter("email", email);
	        try {
	            return query.getSingleResult();
	        } catch (Exception e) {
	            return null; // Trả về null nếu không tìm thấy kết quả nào
	        }
	}

}
