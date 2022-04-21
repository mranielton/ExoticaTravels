<%-- 
    Document   : Hotels
    Created on : Apr 14, 2021, 7:50:05 AM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Hotel Page</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
    <td valign="top" rowspan="200" coolspan="80">
        <table>
        <tr>
        <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Domestic Flights</a></td>
        <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>International Flights</a></td>
        <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>Hotels</a></td>
        <td><font color='darkblue' size='+1'><a href='<c:url value="ConstructionPage.jsp"/>'>car Rentals</a></td>
        <td><font color='darkblue' size='+1'><a href='<c:url value="TourPackage.jsp"/>'>Tour Packages</a></td>
        </tr>
        </table>
        <br>
        <font align='center' color='darkblue' size='+1'>Please select the hotel in which you would like to stay:<br><br>
        <form action='<c:url value="SessionServlet"/>' name='My Form' Method='POST'>
            <table cellspacing='10' align='center'border='2' bordercolor='black'>
                <tr>
                    <td bordercolor='white'>Select Hotel: </td>
                    <td bordercolor='white'>
                    <select name='HotelName'>
                    <option value='Sea View'>Hotel Sea View</option>
                    <option value='Sea Breeze'>Hotel Sea Breeze</option>
                    </td>
                </tr>
                <tr>
                    <td bordercolor='white'>Number of days: </td>
                    <td bordercolor='white'><input type= 'text' name='numOfDays'</td>
                </tr>
                <tr>
                    <td bordercolor='white'>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='submit' Value='Next'></input></a>
                        <input type='hidden' value='Hotels' name='PageName'/>
                    </td>
                </tr>
            </table>
        
    </body>
</html>
