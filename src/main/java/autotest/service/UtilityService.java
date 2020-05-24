package autotest.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import autotest.domain.Utility;
import autotest.repositories.UtilityRepository;

@Service
@Transactional
public class UtilityService {
  @Autowired
  private UtilityRepository utilityRepository;
  public List<Utility> findAll() {
    return utilityRepository.findAll();
  }
  public Utility findById(final int id) {
    return utilityRepository.findById(id);
  }
  public void save(final Utility utility) {
    // check if customer exist -> throw exception
	  utilityRepository.persist(utility);
  }
  public void update(final Utility utility) {
    // if customerDB = null -> throw Exception
	  Utility utilityDB = utilityRepository.findById(utility.getId());
	 utilityDB.setTestSuite(utility.getTestSuite());
	 utilityDB.setTestScript(utility.getTestScript());
	 utilityDB.setBrowserType(utility.getBrowserType());
	 utilityDB.setDriverPath(utility.getDriverPath());
	 utilityDB.setId(utility.getId());
	 utilityDB.setObjectRepository(utility.getObjectRepository());
	 utilityDB.setScreenShotReport(utility.getScreenShotReport());
	 utilityDB.setSummaryReport(utility.getSummaryReport());
	  utilityDB.setSetting(utility.getSetting());
    utilityRepository.persist(utilityDB);
  }
  public void delete(final int id) {
	  Utility utility = utilityRepository.findById(id);
	    if (utility != null) {
	    	utilityRepository.delete(utility);
	    }
  }
}
