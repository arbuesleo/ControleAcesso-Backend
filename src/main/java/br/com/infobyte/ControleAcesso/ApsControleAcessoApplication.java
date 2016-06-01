package br.com.infobyte.ControleAcesso;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.datasource.DriverManagerDataSource;




@SpringBootApplication
@ComponentScan(basePackages="br.com.infobyte.ControleAcesso")
public class ApsControleAcessoApplication {
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
			
	}
}
