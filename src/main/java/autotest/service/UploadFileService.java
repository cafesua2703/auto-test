package autotest.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import autotest.domain.UploadFile;
import autotest.repositories.UploadFileRepository;

@Service
@Transactional
public class UploadFileService {
	  @Autowired
	  private UploadFileRepository uploadFileDAO;
	  public List<UploadFile> findAll() {
	    return uploadFileDAO.findAll();
	  }
	  public UploadFile findById(final int id) {
	    return uploadFileDAO.findById(id);
	  }
	  public void save(final UploadFile uploadFile) {
	    // check if customer exist -> throw exception
		  uploadFileDAO.persist(uploadFile);
	  }
	  public void update(final UploadFile uploadFile) {
	    // if customerDB = null -> throw Exception
		  UploadFile uploadFileDB = uploadFileDAO.findById(uploadFile.getId());
		  uploadFileDB.setFileName(uploadFile.getFileName());
		  uploadFileDB.setData(uploadFile.getData());
		  uploadFileDAO.persist(uploadFileDB);
	  }
	  public void delete(final int id) {
		  UploadFile uploadFile = uploadFileDAO.findById(id);
		  if (uploadFile != null) {
	    	uploadFileDAO.delete(uploadFile);
		  }
	  }
}
