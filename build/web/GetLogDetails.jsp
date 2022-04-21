<%-- 
    Document   : GetLogDetails
    Created on : Apr 14, 2021, 8:49:41 AM
    Author     : Espi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GetLogDetailsPage</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
    <td valign="top" rowspan="200" colspan="80">
        <table>
            <tr>
                <td><jsp:include page="/GetLogDetails">
        <jsp:param name="title" value="GetLogDetails"/>
        </jsp:include>
            </table>
    </body>
</html>
