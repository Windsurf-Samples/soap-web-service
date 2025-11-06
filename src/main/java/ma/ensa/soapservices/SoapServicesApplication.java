package ma.ensa.soapservices;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"ma.ensa.soapservices", "ma.ensa.mysoapservice"})
public class SoapServicesApplication {

    public static void main(String[] args) {
        SpringApplication.run(SoapServicesApplication.class, args);
    }

}
