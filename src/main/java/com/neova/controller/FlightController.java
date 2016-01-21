package com.neova.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.neova.entity.Airport;
import com.neova.entity.FactFlight;
import com.neova.services.AirportService;
import com.neova.services.FactFlightService;

@Controller
public class FlightController {
	private static final Logger logger = Logger.getLogger(FlightController.class);

	@Autowired
	private AirportService airportService;

	@Autowired
	private FactFlightService factFlightService;

	@RequestMapping("/select")
	public ModelAndView selectorModelView() {

		logger.info("In FlightController.");

		ModelAndView selectorModelView = new ModelAndView("select");
		List<Airport> airportsDetailList = airportService.getAllAirports();
		selectorModelView.addObject("airportsDetailList", airportsDetailList);
		return selectorModelView;
	} // End of selectorModelView() method.

	@RequestMapping("/selectedTable")
	public ModelAndView showDataTable(@RequestParam(value = "selectOrigin", required = true) String selectOrigin,
			@RequestParam(value = "selectDestination", required = true) String selectDestination) {

		ModelAndView selectedDataModelView = new ModelAndView("selectedTable");

		logger.info("--------selectedOrigin-------" + selectOrigin);
		logger.info("--------selectedDestination-------" + selectDestination);

		Long selectedOriginId = Long
				.parseLong(selectOrigin.substring(selectOrigin.lastIndexOf("(") + 1, selectOrigin.lastIndexOf(")")));
		logger.info("--------selectedOriginId-------" + selectedOriginId);

		Long selectedDestinationId = Long.parseLong(selectDestination.substring(selectDestination.lastIndexOf("(") + 1,
				selectDestination.lastIndexOf(")")));
		logger.info("--------selectedDestinationId-------" + selectedDestinationId);

		List<FactFlight> listFactFlight = factFlightService.getFlight(selectedOriginId, selectedDestinationId);

		selectedDataModelView.addObject("selectOrigin", selectOrigin);
		selectedDataModelView.addObject("selectDestination", selectDestination);
		selectedDataModelView.addObject("listFactFlight", listFactFlight);

		return selectedDataModelView;
	} // End of showDataTable() method.
}// End of FlightController class.