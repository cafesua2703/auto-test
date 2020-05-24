package autotest.repositories;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import autotest.domain.Customer;
@Repository(value = "customerDAO")
@Transactional(rollbackFor = Exception.class)
public class CustomerRepository {
    @PersistenceContext
    private EntityManager entityManager;
    public void persist(final Customer customer) {
    	entityManager.persist(customer);
    }
	public Customer findById(final int id) {
	    return entityManager.find(Customer.class, id);
	}
	public void delete(final Customer customer) {
	    entityManager.remove(customer);
	}
	public List<Customer> findAll() {
		return entityManager.createQuery("FROM Customer", Customer.class).getResultList();
	}
}
