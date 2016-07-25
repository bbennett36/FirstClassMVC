/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstclassmvc.dto;

import java.util.Date;

/**
 *
 * @author brennan
 */
public class Trip {
    
    private int id;
    private String tripType;
    private String fromDestination;
    private String toDestination;
    private Date departDate;
    private Date returnDate;
    private int numOfPassengers;
    private int tripCost;
    private String tripTime;

    public int getTripCost() {
        return tripCost;
    }

    public String getTripTime() {
        return tripTime;
    }

    public void setTripCost(int tripCost) {
        this.tripCost = tripCost;
    }

    public void setTripTime(String tripTime) {
        this.tripTime = tripTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    

    public String getFromDestination() {
        return fromDestination;
    }

   

    public int getNumOfPassengers() {
        return numOfPassengers;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public String getToDestination() {
        return toDestination;
    }

    public String getTripType() {
        return tripType;
    }

    public void setFromDestination(String fromDestination) {
        this.fromDestination = fromDestination;
    }

    public Date getDepartDate() {
        return departDate;
    }

    public void setDepartDate(Date departDate) {
        this.departDate = departDate;
    }


    public void setNumOfPassengers(int numOfPassengers) {
        this.numOfPassengers = numOfPassengers;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public void setToDestination(String toDestination) {
        this.toDestination = toDestination;
    }

    public void setTripType(String tripType) {
        this.tripType = tripType;
    }
    
    
}
