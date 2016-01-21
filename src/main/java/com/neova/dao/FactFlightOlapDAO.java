/**
 * 
 */
package com.neova.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neova.entity.FactFlight;


/**
 * @author Ashish
 *
 */
@Repository
public class FactFlightOlapDAO {
	private Logger logger = Logger.getLogger(FactFlightOlapDAO.class);
		
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<FactFlight> getFlight(Long origin, Long dest) {
		return sessionFactory.getCurrentSession().createQuery("From FactFlight AS ff WHERE ff.origin = " + origin + " AND ff.dets = " + dest ).setMaxResults(10).list();

	}//End of getFlight() method.
}//End of FactFlightOlapDAO Class.