package com.raudain.model;


public class Employee {

    private int aid;
    private String aname;
    private String tech;

    public int getAid() {

        return aid;
    }

    public void setAid(final int aid) {

        this.aid = aid;
    }

    public String getAname() {

        return aname;
    }

    public void setAname(final String aname) {

        this.aname = aname;
    }

    public String getTech() {

        return tech;
    }

    public void setTech(final String tech) {

        this.tech = tech;
    }

    @Override
    public String toString() {

        return "Employee [aid=" + aid + ", aname=" + aname + ", tech=" + tech
            + "]";
    }


}
