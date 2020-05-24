package autotest.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import autotest.domain.UploadFile;
import autotest.service.UploadFileService;

@Controller
public class UploadFileController {
	  @Autowired
	  private UploadFileService uploadFileService;
	  
	  @RequestMapping("/uploadFile/uploadFile-list")
	  public String listUploadFile(Model model) {
		  List<UploadFile> list = uploadFileService.findAll();
//		  list.forEach(e -> e.setData(org.apache.commons.codec.binary.Base64
//		            .encodeBase64(e.getData())));
//		  .collect(Collectors.toList());
//		  .map(m -> model.addAllAttributes("image", m.getBytes()));
//		  for(UploadFile u: list) {
//			  byte[] encoded=org.apache.commons.codec.binary.Base64
//			            .encodeBase64(u.getData());
//			  String encodedString = new String(encoded);
//			    model.addAttribute("image",encodedString);
//			    model.addAttribute("productPicture", list);
//		  }
//		  byte[] encoded=org.apache.commons.codec.binary.Base64
//				  .encodeBase64(uploadFileService.findAll().get(0).getData());
//		  model.addAttribute("image",new String(list.get(0).getData()));
		  model.addAttribute("listUploadFile", list);
		  return "uploadFile/uploadFile-list";
	  }
	  @RequestMapping("/uploadFile/uploadFile-save")
	  public String insertUploadFile(Model model) {
		  model.addAttribute("uploadFile", new UploadFile());
		  return "uploadFile/uploadFile-save";
	  }
	  @RequestMapping("/uploadFile/uploadFile-view/{id}")
	  public String viewUploadFile(@PathVariable int id, Model model) {
		  UploadFile uploadFile = uploadFileService.findById(id);
		  model.addAttribute("uploadFile", uploadFile);
		  return "uploadFile/uploadFile-view";
	  }
	  
	  @RequestMapping("/uploadFile/uploadFile-update/{id}")
	  public String updateUploadFile(@PathVariable int id, Model model) {
		  UploadFile uploadFile = uploadFileService.findById(id);
		  model.addAttribute("uploadFile", uploadFile);
		  return "uploadFile/uploadFile-update";
	  }
	  @RequestMapping("/uploadFile/saveUploadFile")
	  public String doSaveUploadFile(@ModelAttribute("UploadFile") UploadFile uploadFile, Model model) {
		  uploadFileService.save(uploadFile);
		  model.addAttribute("listUploadFile", uploadFileService.findAll());
		  return "uploadFile/uploadFile-list";
	  }
	  
	  @RequestMapping("/uploadFile/uploadFileDelete/{id}")
	  public String doDeleteUploadFile(@PathVariable int id, Model model) {
		  uploadFileService.delete(id);
		  model.addAttribute("listUploadFile", uploadFileService.findAll());
		  return "uploadFile/uploadFile-list";
	  }
	  
	  @RequestMapping("/uploadFile/updateUploadFile")
	  public String doUpdateUploadFile(@ModelAttribute("UploadFile") UploadFile uploadFile, Model model, 
			  @RequestParam CommonsMultipartFile uploadFile2) {
		  uploadFile.setFileName(uploadFile2.getOriginalFilename());
		  uploadFile.setData(uploadFile2.getBytes());
		  uploadFileService.update(uploadFile);
		  model.addAttribute("listUploadFile", uploadFileService.findAll());
		  return "uploadFile/uploadFile-list";
	  }
	  
//	  @RequestMapping(value = "/doUpload", method = RequestMethod.POST)
	  @RequestMapping(value = "/doUpload")
	    public String handleFileUpload(Model model, HttpServletRequest request,
	            @RequestParam CommonsMultipartFile[] uploadFile) throws Exception {
	          
	        if (uploadFile != null && uploadFile.length > 0) {
	            for (CommonsMultipartFile aFile : uploadFile){
	            	if(!StringUtils.isEmpty(aFile.getOriginalFilename()))
	            	{
	            		System.out.println("Saving file: " + aFile.getOriginalFilename());
		                UploadFile uploadFile2 = new UploadFile();
		                uploadFile2.setFileName(aFile.getOriginalFilename());
		                uploadFile2.setData(aFile.getBytes());
		                uploadFileService.save(uploadFile2);     
	            	}
	            }
	        }
	        model.addAttribute("listUploadFile", uploadFileService.findAll());
	  
	        return "uploadFile/uploadFile-list";
	    }  
}