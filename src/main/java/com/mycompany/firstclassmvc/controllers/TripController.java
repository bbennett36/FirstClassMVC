/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstclassmvc.controllers;

import com.mycompany.firstclassmvc.dao.TripDao;
import com.mycompany.firstclassmvc.dto.Trip;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author brennan
 */
@Controller
@RequestMapping(value = "/trip")
public class TripController {

    private TripDao tripDao;

    @Inject
    public TripController(TripDao tripDao) {
        this.tripDao = tripDao;
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public String showStaticPages(@ModelAttribute Trip search, Map model) {

        List<Trip> trips = tripDao.allTrips();

        Trip trip = new Trip();
        trip.setFromDestination(search.getFromDestination());
        trip.setToDestination(search.getToDestination());
        trip.setDepartDate(search.getDepartDate());
        trip.setReturnDate(search.getReturnDate());
        
        List<Trip> activeTrips = new ArrayList();

        for (Trip t : trips) {
            if (trip.getFromDestination().equals(t.getFromDestination()) && trip.getReturnDate().equals(t.getReturnDate()) && trip.getDepartDate().equals(t.getDepartDate())) {
                activeTrips.add(t);
                model.put("activeTrips", activeTrips);
                model.put("trip", trip);
                return "tripresults";
            } else {
                String doesntExist = "There are no trips that match your search";
                model.put("doesntExist", doesntExist);
                return "redirect:/";
            }

        }
        return "tripresults";

    }

}
