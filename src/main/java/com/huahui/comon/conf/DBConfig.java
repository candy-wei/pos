package com.huahui.comon.conf;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import java.beans.PropertyVetoException;

@Configuration
public class DBConfig {
    @Autowired
    private Environment env;

    @Bean(name="dataSource")
    public ComboPooledDataSource dataSource() throws PropertyVetoException {
        System.out.println("start 初始化数据库...");
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        dataSource.setDriverClass(env.getProperty("jdbc.driver.class.name"));
        dataSource.setJdbcUrl(env.getProperty("jdbc.mapper.url"));
        dataSource.setUser(env.getProperty("jdbc.mapper.username"));
        dataSource.setPassword(env.getProperty("jdbc.mapper.password"));
        dataSource.setMaxPoolSize(8);
        dataSource.setMinPoolSize(5);
        dataSource.setInitialPoolSize(4);
        dataSource.setMaxIdleTime(30000);
        dataSource.setAcquireIncrement(5);
        dataSource.setIdleConnectionTestPeriod(60);
        System.out.println("end 初始化数据库...");
        return dataSource;
    }
}
