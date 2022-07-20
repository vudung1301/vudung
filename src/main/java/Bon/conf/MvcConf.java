package Bon.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class MvcConf implements WebMvcConfigurer{
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/images/");
		
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + "C:/upload/");
	}
	
	@Bean //Bean nay dung de chi ra thu mục chưa view
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		//thiet lap view engine
		bean.setViewClass(JstlView.class);
		
		//duong dan foder chua views
		bean.setPrefix("/WEB-INF/views/");
		
		//ten duoi cua view
		bean.setSuffix(".jsp");
		
		return bean;
	}
}
