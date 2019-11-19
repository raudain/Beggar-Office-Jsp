<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% // Use of PersonBean in a JSP. %>
<jsp:useBean id="person" class="raudain.entity.PersonBean" scope="page"/>
<jsp:setProperty name="Arshad Umar Ammathi" property="*"/>

<html>
    <body>
        Name: <jsp:getProperty name="person" property="name"/><br/>
        Deceased? <jsp:getProperty name="person" property="deceased"/><br/>
        <br/>
        <form name="beanTest" method="POST" action="testPersonBean.jsp">
            Enter a name: <input type="text" name="name" size="50"><br/>
            Choose an option:
            <select name="deceased">
                <option value="false">Alive</option>
                <option value="true">Dead</option>
            </select>
            <input type="submit" value="Test the Bean">
        </form>
    </body>
</html>