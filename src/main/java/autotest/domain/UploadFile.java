package autotest.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="filesupload")
public class UploadFile implements java.io.Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "name")
    private String fileName;
	
	@Column(name = "data")
    private byte[] data;
	
	@Column(name = "base64")
	private String base64;
	
	public UploadFile() {
		
	}
	
	public UploadFile(int id, String name, byte[] flag, String base64) {
	    this.id = id;
	    this.fileName = name;
	    this.data = this.data;
	    this.base64 = this.base64;
	}
    
    public long getId() {
        return id;
    }
 
    public void setId(long id) {
        this.id = id;
    }
 
    public String getFileName() {
        return fileName;
    }
 
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
 
    public byte[] getData() {
        return data;
    }
 
    public void setData(byte[] data) {
        this.data = data;
    }
    
    @Transient //Annotation so it does not persist in the database
    public String getBase64() {
        //Convert the data type byte to String, store it in the variable and return it
        return this.base64 = new String(org.apache.commons.codec.binary.Base64
				  .encodeBase64(this.data)); 
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }
}
