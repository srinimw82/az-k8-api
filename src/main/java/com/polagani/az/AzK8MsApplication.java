package com.polagani.az;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class AzK8MsApplication {

	public static void main(String[] args) {
		SpringApplication.run(AzK8MsApplication.class, args);
	}

	@GetMapping("/hey")
	public String message(){
		return "Hello From Rest API";
	}

}
