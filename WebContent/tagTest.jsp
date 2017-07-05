<!-- Add reference to JSTL tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>JSTL Tag Demo</title>
</head>
<body>

<!-- Use tag from JSTL lib to create the current date and assigne to var -->
<c:set var="time" value="<%= new java.util.Date() %>" />

The time on the server now is ${time}

<!-- Set up some sample data to test the forEach tag -->
<%
	String[] cities = {"Tustin", "Irvine", "Los Angeles"};
	pageContext.setAttributes("myCities", cities);
%>

<!-- Using the forEach tag to print out each city on its own line -->
<c:forEach var="currentCity" items="${myCities}">
	${currentCity} <br/>
</c:forEach>

</body>

</html>