package io.popcon;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by JCooky on 15. 1. 19..
 */
@Configuration
@EnableAutoConfiguration
@ComponentScan
public class PopCon {

  public static void main(String []args) {
    new SpringApplicationBuilder()
        .sources(PopCon.class)
        .run(args);
  }
}
