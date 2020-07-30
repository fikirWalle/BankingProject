package edu.mum;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.*;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


 
@EnableWebMvc
@Configuration
@ComponentScan(basePackages = { "edu.mum.controller" })
@PropertySource(value="classpath:application.properties")
public class Dispatcher extends WebMvcConfigurerAdapter {
 
	@Autowired 
	Environment environment;
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(environment.getProperty("staticResourceAlias")).addResourceLocations(environment.getProperty("staticResourceLocation"));
    }
 
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
 
    @Bean
    public InternalResourceViewResolver jspViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setPrefix(environment.getProperty("viewResolver.prefix"));
        bean.setSuffix(environment.getProperty("viewResolver.suffix"));
        return bean;
    }
    public MessageSource messageSource() {
        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
        messageSource.setBasename("mes");
        messageSource.setDefaultEncoding("UTF-8");   //Allows characters [ e.g. Chinese] in .properties
        return messageSource;
    }
 
   


 
    
  
    @Bean(name = "validator")
    public LocalValidatorFactoryBean validator() {
       LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
       bean.setValidationMessageSource(messageSource());
       return bean;
    }
    
    @Override
    public Validator getValidator(){
       return validator();
    }

   
    
    
}
