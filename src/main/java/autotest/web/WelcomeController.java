package autotest.web;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import autotest.service.SikuliService;

@Controller
public class WelcomeController {
    private final Logger logger = LoggerFactory.getLogger(WelcomeController.class);
    private final SikuliService sikuliService;

    @Autowired
    public WelcomeController(SikuliService sikuliService) {
        this.sikuliService = sikuliService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Map<String, Object> model) {
        logger.debug("index() is executed!");
        logger.debug("Model:"+ model);
        return "index";
    }

    @RequestMapping(value = "/test")
    public ModelAndView response(@RequestParam("name") String name) {
        ModelAndView model = new ModelAndView();
        if(name.equalsIgnoreCase("sikuli")){
            sikuliService.test(model);
        }
        model.setViewName("test");
        model.addObject("user",name);
        return model;
    }
    
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello(Map<String, Object> model) {
        logger.debug("index() is executed!");
        logger.debug("Model:"+model);
        return "hello";
    }
}
