package autotest.repositories;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import autotest.domain.Utility;

@Repository(value = "utilityRepository")
@Transactional(rollbackFor = Exception.class)
public class UtilityRepository {
	  @PersistenceContext
	  private EntityManager entityManager;
	  
	  public void persist(final Utility customer) {
	    entityManager.persist(customer);
	  }
	  
	  public Utility findById(final int id) {
	    return entityManager.find(Utility.class, id);
	  }
	  
	  public void delete(final Utility customer) {
	    entityManager.remove(customer);
	  }
	  
	  public List<Utility> findAll() {
	    return entityManager.createQuery("FROM Utility", Utility.class).getResultList();
	  }
}
