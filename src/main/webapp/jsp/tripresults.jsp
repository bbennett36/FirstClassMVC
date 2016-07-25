<%-- 
    Document   : tripresults
    Created on : Jul 11, 2016, 6:57:43 PM
    Author     : brennan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <c:forEach items="${activeTrips}" var="t">
            <div>
                <p style="text-align: center;">Schedules Departing From ${t.fromDestination} To ${t.toDestination} | Departing Date: ${t.departDate}</p>
                    <table class="table table-bordered">
                        <tr>
                            <td width="160px" class="text-center">$${t.tripCost}</td>
                            <td class="text-center">First class travelers will serve a complimentary light meal on this trip</td>
                        </tr>
                        <tr>
                            <td class="text-center">${t.tripTime}</td>
                            <td rowspan="2"></td>
                        </tr>
                        <tr>
                            <td class="text-center"><button class="btn btn-danger" type="submit" id="select">Select</button></td>
                        </tr>
                    </table>
            </div>
        </c:forEach>
        </div>
        <div class="col-md-2"></div>

    </body>
</html>
