<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<%--<h1>Please enter your name</h1>--%>
<%--<form action = "${pageContext.request.contextPath}/showDetails" method = "get">--%>
<%--    <input type="text" name="employeeName" placeholder="Write your name" />--%>
<%--    <input type="submit" />--%>
<%--</form>--%>

<h1>Please enter your details</h1>
<form:form action="${pageContext.request.contextPath}/showDetails" modelAttribute="employee">
Name: <form:input path="name"/>
<br><br>
Last name: <form:input path="lastName"/>
<br><br>
Age: <form:input path="age"/>
</form:form>
<br>
<input type="submit" value="OK"/>
</body>
</html>