package com.raudain.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.raudain.model.Employee;

public class EmployeeDao {

    public Employee getEmployee(final int aid) {
        final Employee a = new Employee();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/navin","root","root");
            final Statement st = con.createStatement();
            final ResultSet rs = st.executeQuery("select * from alien where aid=" + aid);
            if(rs.next()) {
                a.setAid(rs.getInt("aid"));
                a.setAname(rs.getString("aname"));
                a.setTech(rs.getString("tech"));
            }
        }
        catch(final Exception e){
            System.out.println(e);
        }
        return a;
    }
}
