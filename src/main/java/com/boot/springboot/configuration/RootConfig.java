package com.boot.springboot.configuration;

import com.boot.springboot.condition.HSqlDataSourceCondition;
import com.boot.springboot.condition.MySqlDataSourceCondition;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = {"com.boot.springboot"})
@PropertySource("classpath:application.properties")
public class RootConfig {

    @Bean(name = "datasourceMysql")
    @Conditional(MySqlDataSourceCondition.class)
    public DataSource dataSourceMySql(@Value("${user.username}") String userName,
                                      @Value("${user.password}") String password) {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/myuser");
        dataSource.setUsername(userName);
        dataSource.setPassword(password);
        return dataSource;

//        JndiObjectFactoryBean jndiFactoryBean=new JndiObjectFactoryBean();
//        jndiFactoryBean.setJndiName("java:comp/env/jdbc/TestDB");
//        //jndiFactoryBean.setResourceRef(true);
//        jndiFactoryBean.setProxyInterface(javax.sql.DataSource.class);
//        DataSource dataSource= (DataSource)jndiFactoryBean.getObject();
//        System.out.println("zzzzzzzzz"+dataSource==null);
//        return dataSource;
    }

    @Bean(name = "datasourceHql")
    @Conditional(HSqlDataSourceCondition.class)
    public DataSource dataSourceHsql() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.hsqldb.jdbcDriver");
        dataSource.setUrl("jdbc:hsqldb:hsql://localhost:9001/testdb");
        dataSource.setUsername("sa");
        return dataSource;
    }

    @Bean
    public JdbcTemplate jdbcTemplate() {
        DataSource dataSource=dataSourceMySql("root","kumar123");
        return new JdbcTemplate(dataSource);
    }
}


