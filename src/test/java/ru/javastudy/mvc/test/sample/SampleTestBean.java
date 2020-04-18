package ru.javastudy.mvc.test.sample;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ru.javastudy.mvcHtml5Angular.mvc.bean.SampleBean;
import ru.javastudy.mvcHtml5Angular.mvc.bean.User;

/**
 * Created for JavaStudy.ru on 04.03.2016.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:mvc-config.xml", "classpath:application-context.xml"})
public class SampleTestBean {

//Comment  this 'bean class="org.springframework.web.servlet.view.XmlViewResolver" ' in mvc-context.xml
//to avoid 'Caused by: java.lang.IllegalStateException:WebApplicationObjectSupport instance [org.springframework.web.servlet.view.XmlViewResolve'

    @Autowired
    private ApplicationContext applicationContext;

    @Test
    public void sampleTest() {
        SampleBean sampleBean = applicationContext.getBean("sampleBean", SampleBean.class);
        Assert.assertNotNull(sampleBean);

        sampleBean = (SampleBean) applicationContext.getBean("sampleBean");
        Assert.assertNotNull(sampleBean);

        Assert.assertEquals(sampleBean.getNumber(), 666);
        Assert.assertEquals(sampleBean.getStringValue(), "postConstructValue");
    }
}
