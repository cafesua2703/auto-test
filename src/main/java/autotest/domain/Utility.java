package autotest.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The Class Utility.
 */
@Entity
@Table(name = "utility")
public class Utility{
  
  /** The id. */ 
	@Id
	  @Column(name = "id")
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  
  /** The test suite. */
  @Column(name = "test_suite")
  private String testSuite;
  
  /** The test script. */
  @Column(name = "test_script")
  private String testScript;
  
  /** The object repository. */
  @Column(name = "object_repository")
  private String objectRepository;
  
  /** The summary report. */
  @Column(name = "summary_report")
  private String summaryReport;
  
  /** The screen shot report. */
  @Column(name = "screen_shot_eport")
  private String screenShotReport;
  
  /** The browser type. */
  @Column(name = "browser_Type")
  private String browserType;
  
  /** The driver path. */
  @Column(name = "driver_path")
  private String driverPath;
  
  /** The setting. */
  @Column(name = "setting")
  private String setting;

	
	public int getId() {
		return this.id;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getTestSuite() {
		return this.testSuite;
	}
	
	
	public void setTestSuite(String testSuite) {
		this.testSuite = testSuite;
	}
	
	
	public String getTestScript() {
		return this.testScript;
	}
	
	
	public void setTestScript(String testScript) {
		this.testScript = testScript;
	}
	
	
	public String getObjectRepository() {
		return this.objectRepository;
	}
	
	
	public void setObjectRepository(String objectRepository) {
		this.objectRepository = objectRepository;
	}
	
	
	public String getSummaryReport() {
		return this.summaryReport;
	}
	
	
	public void setSummaryReport(String summaryReport) {
		this.summaryReport = summaryReport;
	}
	
	
	public String getScreenShotReport() {
		return this.screenShotReport;
	}
	
	
	public void setScreenShotReport(String screenShotReport) {
		this.screenShotReport = screenShotReport;
	}
	
	
	public String getBrowserType() {
		return this.browserType;
	}
	
	
	public void setBrowserType(String browserType) {
		this.browserType = browserType;
	}
	
	
	public String getDriverPath() {
		return this.driverPath;
	}
	
	
	public void setDriverPath(String driverPath) {
		this.driverPath = driverPath;
	}
	
	
	public String getSetting() {
		return this.setting;
	}
	
	
	public void setSetting(String setting) {
		this.setting = setting;
	}
  
}
