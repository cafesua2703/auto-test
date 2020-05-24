package autotest.repositories;

import autotest.domain.UploadFile;

public interface FileUploadDAO {
	void save(UploadFile uploadFile);
}
