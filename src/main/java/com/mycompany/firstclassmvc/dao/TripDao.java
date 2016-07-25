/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstclassmvc.dao;

import com.mycompany.firstclassmvc.dto.Trip;
import java.util.List;

/**
 *
 * @author brennan
 */
public interface TripDao {
    
    public Trip create(Trip trip);
    public void delete(int id);
    public void update(Trip trip);
    public Trip get(int id);
    public List<Trip> allTrips();
    
}
