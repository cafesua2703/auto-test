package autotest.repositories;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import autotest.domain.UploadFile;

@Repository(value = "uploadFileDAO")
@Transactional(rollbackFor = Exception.class)
public class UploadFileRepository {
    @PersistenceContext
    private EntityManager entityManager;
    
    public void persist(final UploadFile customer) {
    	entityManager.persist(customer);
    }
	public UploadFile findById(final long id) {
	    return entityManager.find(UploadFile.class, id);
	}
	public void delete(final UploadFile customer) {
	    entityManager.remove(customer);
	}
	public List<UploadFile> findAll() {
		return entityManager.createQuery("FROM UploadFile", UploadFile.class).getResultList();
	}
}
