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

</body>

</html>