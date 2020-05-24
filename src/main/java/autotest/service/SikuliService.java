package autotest.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;

import autotest.test.Test;

import java.util.Map;

@Service
public class SikuliService {
    private static final Logger logger = LoggerFactory.getLogger(SikuliService.class);

    public ModelAndView test(ModelAndView model) {
        Test test = new Test();
        test.readUtilFile(model);
        logger.debug("Test is executed!");
        return model;

    }
}
