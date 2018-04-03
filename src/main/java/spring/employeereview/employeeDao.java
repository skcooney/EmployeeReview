package spring.employeereview;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class employeeDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("EmployeeReview");
	
	public void insertEmployee(Employee employeeToAdd) {
	EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(employeeToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Employee> getAllEmployees() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select e from Employee e";
		TypedQuery<Employee> typedQuery = em.createQuery(q, Employee.class);
		List<Employee> all = typedQuery.getResultList();
				return all;
	}
}

