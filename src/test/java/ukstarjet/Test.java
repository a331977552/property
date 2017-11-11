package ukstarjet;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import uk.co.ukstarjet.service.StatisticService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test {


	@Resource(name="statisticService")
	StatisticService service;
	
	
	
	@org.junit.Test
	public void tes1() {
		Integer numberOfVisitedPeople = service.getNumberOfVisitedPeople();
		
	}
	
	
	
}
