/**
 * 
 */
package com.neova.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.neova.dao.FactFlightOlapDAO;
import com.neova.entity.FactFlight;

/**
 * @author Ashish
 *
 */
@Service
public class FactFlightService {

	@Autowired
	private FactFlightOlapDAO factFlightOlapDAO;
	
	@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
	public List<FactFlight> getFlight(Long origin, Long dest) {
		return factFlightOlapDAO.getFlight(origin, dest);
	}
}
