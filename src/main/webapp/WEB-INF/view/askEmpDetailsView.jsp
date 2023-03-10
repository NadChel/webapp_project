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
<form:form action="/showDetails" modelAttribute="employee">
    Name: <form:input path="name"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>
    Age: <form:input path="age"/>
    <br><br>
    Department: <form:select path="department">
    <form:option value="Information Technology" label="IT"/>
    <form:option value="Sales"/>
    <form:option value="Human Rresources" label="HR"/>
</form:select>
    <br>
    <h4>Which car do you want?</h4>
    Bicycle: <form:radiobutton path="car" value="bicycle"/>
    <br>
    Kick scooter: <form:radiobutton path="car" value="kick scooter"/>
    <br>
    By foot: <form:radiobutton path="car" value="by foot"/>
    <br><br>
    <h4>Which language(s) do you speak?</h4>
    <br>
    EN: <form:checkbox path="languages" value="English"/>
    FR: <form:checkbox path="languages" value="French"/>
    DE: <form:checkbox path="languages" value="German"/>
    <br><br>
    <input type="submit" value="OK"/>
</form:form>
</body>
</html>