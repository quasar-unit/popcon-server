package io.popcon;

import org.springframework.boot.actuate.system.ApplicationPidFileWriter;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by JCooky on 15. 1. 19..
 */
@Configuration
@EnableAutoConfiguration
@ComponentScan
@RestController
public class PopCon {

  @RequestMapping("/test")
  public String test() {
    return "hello world";
  }

  public static void main(String []args) {
    new SpringApplicationBuilder()
        .listeners(new ApplicationPidFileWriter("popcon-server.pid"))
        .sources(PopCon.class)
        .run(args);
  }
}
