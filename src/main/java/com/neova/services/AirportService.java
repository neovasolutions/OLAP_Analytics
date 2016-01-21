package com.neova.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.neova.dao.AirportDAO;
import com.neova.entity.Airport;

@Service
public class AirportService {
	@Autowired
	private AirportDAO airportDAO;

	@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
	public List<Airport> getAllAirports() {
		return airportDAO.getAllAirports();
	}
}
