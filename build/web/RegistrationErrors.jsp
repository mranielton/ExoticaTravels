<%-- 
    Document   : RegistrationErrors
    Created on : Apr 22, 2021, 11:27:46 PM
    Author     : Espi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3c//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
        <td valign="top" rowspan="200" colspan="80">
            <table>
                <tr>
        <td>
        <c:set var="message" value="${requestScope.errMsg}"/>
        <font color='red' size='+2'><c:out value="${message}"/>
            </table>
    </body>
</html>
