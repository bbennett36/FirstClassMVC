<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="../favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>First Class Travelers: Home</title>

    <meta name="Description"
          content="Intellectual Sports Training Solutions (ISTS) is a company that has been created to teach Players, Parents, Coaches, Teams, and Organizations about knowledge, skill, and performance for the sport of Baseball and Softball. Knowledge is the overall component that players need to reach their goals. Assessing a players current ability provides a realistic measurement of a players current skill. Utilizing knowledge to enhance a players skill will increase a players overall ability. Performance is a by product of a players increased knowledge and skill that will help them to become more confident to obtain success."/>
    <meta name="Keywords"
          content="traveling, trip, bus, ride, bus ride, vacation, employment, schedule, first, class, travelers, charter"/>


    <meta name="author" content="First Class Travelers"/>
    <meta name="rating" content="General"/>
    <meta name="distribution" content="Global"/>
    <meta name="language" content="English"/>

    <meta name="ROBOTS" content="INDEX,FOLLOW"/>
    <meta http-equiv="Expires" content="0"/>
    <meta name="revisit-after" content="1 days"/>
    <meta name="resource-type" content="document"/>
    <meta name="doc-type" content="Web Page"/>
    <meta name="doc-class" content="Living Document"/>
    <meta name="doc-rights" content="Copywritten Work"/>
    <meta name="copyright" content="First Class Travelers"/>

    <link rel="stylesheet" href="css/bootstrap.min.css"/>


    <!--<link href="scripts/style.css" rel="stylesheet" type="text/css"/>-->

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <!--<link rel="stylesheet" href="/resources/demos/style.css">-->

    <!--<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">-->

    <link href="css/style.css" rel="stylesheet" type="text/css"/>


</head>

<body>
<div id="top">&nbsp;</div>
<!--<div id="booklogo"><a href="index.html" ><img src="images/FirstClass_Logo.jpg" width="927" height="175px" alt=""/></a></div>-->
<div id="wrapper2">
    <div class="col-md-4">
    </div>
    <div class="col-md-4 text-center">
        <br/>
        <a href="index.html"><img src="img/FirstClass_Logo.jpg" height="120" alt="" style="border: 1px solid black"/></a>
        <br/>
        <form method="POST" action="${pageContext.request.contextPath}/trip/check" id="bookatrip">
        <div id="booktripheader">
            <br/>
            <h1>Book Your Trip</h1>
            <br/>
        </div>
        <div id="booktripbody">
            <br/>
            <div class="btn-toolbar" data-toggle="buttons">
                <label class="btn btn-danger" style="border: 1px solid white">
                    <input type="radio" name="tripType" id="roundtrip" autocomplete="off"> Round Trip
                </label>
                <label class="btn btn-danger" style="border: 1px solid white">
                    <input type="radio" name="tripType" id="oneway" autocomplete="off"> One Way
                </label>
            </div>
            <br/>
            <br/>
            From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To
            <br/>
            <div class="input-group">

                <select class="form-control" name="fromDestination" style="width: 190px" id="select1">
                    <option></option>
                </select>

                <select class="form-control" name="toDestination" style="width: 190px" id="select2">
                    <option></option>
                </select>
            </div>
            <br/>
            Depart Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Return
            Date
            <div class="input-group">
                <div id="datepicker-container">
                    <div class=".ui-datepicker">
                        <input type="text" name="departDate" id="from" class="form-control" style="width: 180px"/>
                        <input type="text" name="returnDate" id="to" class="form-control" style="width: 180px"/>
                    </div>
                </div>
            </div>
            <br/>
            <br/>
            <p style="text-align: center">Number of Passengers</p>
            <select id="passengers" name="numOfPassengers" class="form-control text-center">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
            </select>
            <br/>
            <br/>
            <button type="submit" class="btn btn-primary btn-lg active" role="button">Submit</button>
            <br/>
            <br/>
        </div>
        </form>
    </div>
    <div class="col-md-4"></div>


</div>
<div id="footer">

    <div style="font-family:Arial; font-size:10px; float:left; margin: 40px 0px 0px 10px;"><i>&copy; First Class
        Tavelers LLC.</i>
    </div>

    <div style="float:right; margin: 5px 10px 0px 0px;">
        <a href="http://www.facebook.com/" target="_blank"><img src="images/facebook.png"/></a><a
        href="http://twitter.com/" target="_blank"></a><a href="mailto:firstclasstravelers@gmail.com"><img
        src="images/email.png"/></a></div>

</div>
<script src="js/firstclassapp.js"></script>
</body>
</html>
