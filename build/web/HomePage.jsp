<%-- 
    Document   : Homepage
    Created on : Apr 14, 2021, 8:47:52 AM
    Author     : Espi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
        
        <script type = "text/javascript"><!-- 
            
            refreshdiv(); 
            
            // --></script>
        <script type ="text/javascript">
            var seconds = 5;
            var img = "imgchng";
            var url = "imgchng";
            function refreshdiv()
            {
                var xmlHttp;
                
                try
                {
                    xmlHttp = new XMLHttpRequest(); // Firefox, Opera 8.0+,Safari
                }
            
                catch (e)
                {
                    try
                    {
                        xmlHttp=new ActiveXObject("Msxm12.XMLHTTP");// Internet Explorer
                    }
                
                    catch (e)
                    {
                        try
                        {
                            xmlHttp=new ActiveXObject("Microsoft.XMLHTT");
                        }

                    catch (e)
                    {
                        alert("Your browser does not support AJAX.");

                        return false;
                    }
                    }
                }
        //Timestamp for preveneting IE caching the GET request
         
        fetch_unix_timestamp = function =()
        {
            return parseInt(new Date().getTime().toString().substring(0,10))
        }
        
         
        var timestamp = fetch_unix_timestamp();
        var nocacheurl = url+"?t="+timestamp;
        xmlHttp.onreadystatechange = function()
        {
            if(xmlHttp.readystate==4)
            {
                document.getElementById(img).src=xmlHttp.responseText;
                
                setTimeout('refreshdiv()',seconds*1000)
            }
            
        }
            
            xmlHttp.open("GET",nocacheurl,true);
            xmlHttp.send(null);
        }
            
            //Start the refreshing process
            var seconds;
            
            window.onload = function startrefresh()
            {
                setTimeout('refreshdiv()',seconds*1000);
             }
            }
            }
    </script>
            
            
            
            
        <td valign="top"><br/></br><B><I><font style='font-family:'Brush Script MT Italics', Gadget, sans-serif;' size='+1' color='darkblue'>
          Exotica Travels is a travel management company established by Jordan Desilva in Colomba, Sri Lanka.Today under the chairmanship of Jim Henry,the company has spread across the country. 
          It provides online air ticket booking. In addition,it provides hotel suite booking in various exotica locations all over the world.
          Moreover, it provides rental car bookings. To avail the the travel package services kindly log on to the website.</B></I> 
         <br/>
         <br/>
         <html:form method="post" action="/SubmitAction">
         <table cellspacing='10' align='center'>
         <tr>
         <td><font color='darkblue' size='+2'>LOGIN AS:
         </tr>
         </td>
         </table>
         <table cellspacing='10' align='center'border='2' bordercolor='black'>
             <tr><td bordercolor='white'><html:radio property='r1' value='existinguser'>Existing User</html:radio>
             <tr><td bordercolor='white'><html:radio property='r1' value='newuser'>New User</html:radio>
         <tr><td bordercolor='white'><input type="submit" value="Submit"/> 
         </table>
         </html:form>
         </tr>
         </table>
    </body>
</html>
