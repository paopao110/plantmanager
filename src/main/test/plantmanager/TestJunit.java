package plantmanager;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.plantmanager.service.PlantCategoryService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class TestJunit {

	@Autowired
	private PlantCategoryService categoryService;
	
	@Test
	public void query(){
//		System.out.println(categoryService.getPlantCategoryByPaging(0, 10).size());
		System.out.println(categoryService.getLastIndexId());
	}
}
