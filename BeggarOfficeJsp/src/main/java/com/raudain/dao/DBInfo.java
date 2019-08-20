package com.raudain.dao;

public class DBInfo {
    //static String host = "jws-app-mysql"; // The standard name in Tomcat+ MySQL on openshift
    static String host = "localhost";

    static String DBname = "lllc";
    static int port = 3306; // This is for MySQL
    static String mySQLdbURL = "jdbc:mysql://" + host + ":" + port + "/"
        + DBname;

    static String user = "user";
    static String password = "password";

    static String driver = "com.mysql.cj.jdbc.Driver";

    public DBInfo() {

    }

    public static String getDBURL() {
        return mySQLdbURL;
    }

    public static String getUser() {
        return user;
    }

    public static String getPassword() {
        return password;
    }

    public static String getDriver() {
        return driver;
    }

}
