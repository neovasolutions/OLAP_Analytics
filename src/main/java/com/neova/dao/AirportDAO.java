package com.neova.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neova.entity.Airport;


@Repository
public class AirportDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Airport> getAllAirports() {
		return sessionFactory.getCurrentSession().createQuery("From Airport")
				.list();
	}// End of getAllAirports() method.
}// End of AirportDAO class.
