package autotest.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import autotest.domain.Customer;
import autotest.service.CustomerService;
@Controller
public class CustomerController {
  @Autowired
  private CustomerService customerService;
  
  @RequestMapping("/customer/customer-list")
  public String listCustomer(Model model) {
    model.addAttribute("listCustomer", customerService.findAll());
    return "customer/customer-list";
  }
  @RequestMapping("/customer/customer-save")
  public String insertCustomer(Model model) {
    model.addAttribute("customer", new Customer());
    return "customer/customer-save";
  }
  @RequestMapping("/customer/customer-view/{id}")
  public String viewCustomer(@PathVariable int id, Model model) {
    Customer customer = customerService.findById(id);
    model.addAttribute("customer", customer);
    return "customer/customer-view";
  }
  
  @RequestMapping("/customer/customer-update/{id}")
  public String updateCustomer(@PathVariable int id, Model model) {
    Customer customer = customerService.findById(id);
    model.addAttribute("customer", customer);
    return "customer/customer-update";
  }
  @RequestMapping("/customer/saveCustomer")
  public String doSaveCustomer(@ModelAttribute("Customer") Customer customer, Model model) {
    customerService.save(customer);
    model.addAttribute("listCustomer", customerService.findAll());
    return "customer/customer-list";
  }
  @RequestMapping("/customer/updateCustomer")
  public String doUpdateCustomer(@ModelAttribute("Customer") Customer customer, Model model) {
    customerService.update(customer);
    model.addAttribute("listCustomer", customerService.findAll());
    return "customer/customer-list";
  }
  
  @RequestMapping("/customer/customerDelete/{id}")
  public String doDeleteCustomer(@PathVariable int id, Model model) {
    customerService.delete(id);
    model.addAttribute("listCustomer", customerService.findAll());
    return "customer/customer-list";
  }
}