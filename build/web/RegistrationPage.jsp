<%-- 
    Document   : RegistrationPage
    Created on : Apr 14, 2021, 7:48:33 AM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Page</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
    <td valign="top">
        <html:form method="post" action="/RegistrationAction">
            <table cellspacing='10' align='center'>
                <tr>
                    <td><font color='darkblue' size='+2'>New User Registration Form
                </tr>
            </td>
            </table>
            <table cellspacing='10' align='center'border='2' bordercolor='black'>
                <tr><td bordercolor='white'>User Name:<td
                        COLSPAN='2' bordercolor='white'><input type='text' name='tt1'>
                        <tr><td bordercolor='white'>User ID:<td COLSPAN='2' bordercolor='white'>
                            <html:text property="userid"/>
                        </tr>
                        <tr><td bordercolor='white'>Password:<td
                                COLSPAN='2' bordercolor='white'>
                                <html:password property="password"/>
                        </tr>
                        <tr><td bordercolor='white'>Re -enter Password:<td COLSPAN='2' bordercolor='white'><html:password property="reenterpassword"/>
                        <tr><td bordercolor='white'> Address:<td COLSPAN='2' bordercolor='white'><html:textarea property="address"/>
                        <tr><td bordercolor='white'>State:<td COLPSAN='2' bordercolor='white'><html:text property="state"/>
                        <tr><td bordercolor='white'>Country:<td COLPSAN='2' bordercolor='white'><html:text property="country"/>
                        <tr><td bordercolor='white'></br>
                        <tr><td bordercolor='white'><input type="submit" value="Submit"/>
                                     <td bordercolor='white'><input type="button" value="Reset"/>
            </table>
        </html:form>
    </body>
</html>
