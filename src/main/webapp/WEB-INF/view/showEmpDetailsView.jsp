<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<%--<h1>Hi, ${param.employeeName}! You're welcome!</h1>--%>

<%--<h1>Hi, ${nameAttribute}! You're welcome!</h1>--%>

<h2>Your name: </h2>
<p>${employee.name}</p>
<br>
<h2>Your last name: </h2>
<p>${employee.lastName}</p>
<br>
<h2>Your age: </h2>
<p>${employee.age}</p>
<br>
<h2>Your department: </h2>
<p>${employee.department}</p>
<br>
<h2>Your car: </h2>
<p>${employee.car}</p>
<br>
<h2>Your language(s): </h2>
<ul>
<c:forEach var="lang" items="${employee.languages}">
    <li>${lang}</li>
</c:forEach>
</ul>
</body>
</html>