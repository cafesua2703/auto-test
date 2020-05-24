package autotest.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import autotest.domain.Utility;
import autotest.service.UtilityService;

@Controller
public class UtilityController {
  @Autowired
  private UtilityService utilityService;
  @RequestMapping("/utility-list")
  public String listutilityService(Model model) {
    model.addAttribute("listUtility", utilityService.findAll());
    return "utility-list";
  }
  @RequestMapping("/utility-save")
  public String insertUtility(Model model) {
    model.addAttribute("utility", new Utility());
    return "utility-save";
  }
  @RequestMapping("/utility-view/{id}")
  public String viewUtility(@PathVariable int id, Model model) {
	  Utility utility = utilityService.findById(id);
    model.addAttribute("utility", utility);
    return "utility-view";
  }
  
  @RequestMapping("/utility-update/{id}")
  public String updateUtility(@PathVariable int id, Model model) {
	  Utility utility = utilityService.findById(id);
    model.addAttribute("utility", utility);
    return "utility-update";
  }
  @RequestMapping("/saveUtility")
  public String doSaveUtility(@ModelAttribute("Utility") Utility utility, Model model) {
	  utilityService.save(utility);
    model.addAttribute("listUtility", utilityService.findAll());
    return "utility-list";
  }
  @RequestMapping("/updateUtility")
  public String doUpdateUtility(@ModelAttribute("Utility") Utility utility, Model model) {
	  utilityService.update(utility);
    model.addAttribute("listUtility", utilityService.findAll());
    return "utility-list";
  }
  
  @RequestMapping("/utilityDelete/{id}")
  public String doDeleteUtility(@PathVariable int id, Model model) {
	  utilityService.delete(id);
    model.addAttribute("listUtility", utilityService.findAll());
    return "utility-list";
  }
}