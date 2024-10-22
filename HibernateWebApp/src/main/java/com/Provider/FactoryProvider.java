package com.Provider;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factory =null;
	public static SessionFactory getFactory() {
		if(factory==null) {
			Configuration config= new Configuration();
			config.configure("hibernate.cfg.xml");
			factory=config.buildSessionFactory();
		}
		return factory;
	}
	public static void closeFactory() {
		if(factory.isOpen()==true) {
			factory.close();
		}
	}

}
