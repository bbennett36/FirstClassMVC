/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstclassmvc.dao;

import com.mycompany.firstclassmvc.dto.Trip;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author brennan
 */
public class TripDaoDbImpl implements TripDao {
    
    private static final String SQL_GET_ALL_TRIPS = "select * from trip";
    
    private JdbcTemplate jdbc;
    
    public TripDaoDbImpl(JdbcTemplate jdbc){
        this.jdbc = jdbc;
    }

    @Override
    public Trip create(Trip trip) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Trip trip) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Trip get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Trip> allTrips() {
        return jdbc.query(SQL_GET_ALL_TRIPS, new TripMapper());
    }
    
    private static final class TripMapper implements RowMapper<Trip> {

        @Override
        public Trip mapRow(ResultSet rs, int i) throws SQLException {

            Trip trip = new Trip();

            trip.setId(rs.getInt("id"));
            trip.setTripType(rs.getString("TripType"));
            trip.setFromDestination(rs.getString("fromDestination"));
            trip.setToDestination(rs.getString("toDestination"));
            trip.setDepartDate(rs.getDate("departDate"));
            trip.setReturnDate(rs.getDate("returnDate"));
            trip.setNumOfPassengers(rs.getInt("numOfPassengers"));
            trip.setTripCost(rs.getInt("TripCost"));
            trip.setTripTime(rs.getString("tripLength"));

            return trip;

        }

    }
    
}
