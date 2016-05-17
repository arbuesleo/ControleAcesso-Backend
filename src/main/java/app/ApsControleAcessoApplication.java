package app;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


import app.utils.Serial;


@SpringBootApplication
@ComponentScan(basePackages="app")
public class ApsControleAcessoApplication {
	
	private static final Serial serial = new Serial();
	@Bean
    public javax.sql.DataSource dataSource(org.springframework.core.env.Environment environment) {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/aps_controleacesso_bd");
        dataSource.setUsername("root");
        dataSource.setPassword("admin");
        return dataSource;
    }
	
	public static void main(String[] args) {
		SpringApplication.run(ApsControleAcessoApplication.class, args);
		serial.abrirPortaSerial();
		
		
	}
}
