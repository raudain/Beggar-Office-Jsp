package com.raudain.dao;

import com.raudain.model.Employee;

public class EmployeeDao {

    public Employee getEmployee(final int aid) {
        final Employee a = new Employee();
        a.setAid(101);
        a.setAname("Navin");
        a.setTech("Java");

        return a;
    }
}
