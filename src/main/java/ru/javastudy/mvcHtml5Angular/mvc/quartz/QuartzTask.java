package ru.javastudy.mvcHtml5Angular.mvc.quartz;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * look application-context.xml
 * 1. simpleTrigger
 * 2. simpleQuartzJob
 * 3. bean id="simpleQuartzTask"
 * 4. Quartz Scheduler
 */
public class QuartzTask {

    private static final Logger logger = LoggerFactory.getLogger(QuartzTask.class);

    public void simpleTaskMethod() {
//		you can log here to database with simpletrigger
//        logger.info("Test Simple Quartz Time: " + Calendar.getInstance().getTime());
//        System.out.println("Test Simple Quartz Time: " + Calendar.getInstance().getTime());
    }

}
