<!-- Add reference to JSTL tag library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- import java utils to create table -->
<!-- import Student class from com.nguyen92.jsp.tagDemo package -->
<%@ page import="java.util.*,com.nguyen92.jsp.tagDemo.Student" %>


<html>
<head>
<title>JSTL Tag Demo</title>
</head>


<body>
<!-- DATE TAG ****************************** -->
<!-- Use tag from JSTL lib to create the current date and assigne to var -->
<c:set var="time" value="<%= new java.util.Date() %>" />

The time on the server now is ${time}
<br/><br/>


<!-- FOR EACH TAG ****************************** -->
<!-- Set up some sample data to test the forEach tag -->
<%
	String[] cities = {"Tustin", "Irvine", "Los Angeles"};
	pageContext.setAttribute("myCities", cities);
%>

<!-- Using the forEach tag to print out each city on its own line -->
My favorite cities:
<br/>
<c:forEach var="currentCity" items="${myCities}">
	${currentCity} <br/>
</c:forEach>
<br/><br/>



<!-- TABLE USING FOR EACH TAG ****************************** -->
<!-- Set up sample data to create Student objects -->
<%
	List<Student> students = new ArrayList<>();
	students.add(new Student("George","Wynn",true));
	students.add(new Student("Ashley","Simpson",false));
	students.add(new Student("Jeremy","Munoz",false));
	
	pageContext.setAttribute("myStudents",students);
%>

<!-- HTML CHEAT SHEET -->
<!-- 
	<tr> table row
	<th> table header; title of the column
	<td> table data; data in each cell
 -->
<table border="2">

<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Graduated Cum Laude</th>
</tr>

	<c:forEach var="currentStudent" items="${myStudents}">
		<tr>
			<td>${currentStudent.firstName}</td>
			<td>${currentStudent.lastName}</td>
			<td>
				<c:if test="${currentStudent.cumLaude}">
					Cum Laude
				</c:if>
				<c:if test="${not currentStudent.cumLaude}">
					Dean's List
				</c:if>
			</td>
		</tr>
	</c:forEach>

</table>


</body>

</html>