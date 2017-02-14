<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Save Customer</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">


</head>

<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div id="container">
    <h3>Save Customer</h3>

    <form:form action="saveCustomer" modelAttribute="customers" method="POST">
        <!--  need to associate this data with customer id  -->
        <!--  the backend needs this to ensure data flows correctly and perform update operation -->
        <form:hidden path="id" />

        <table>
            <tbody>
            <tr>
                <td><label>First Name</label></td>
                <td><form:input path="firstName"/></td>
            </tr>
            <tr>
                <td><label>Last Name</label></td>
                <td><form:input path="lastName"/></td>
            </tr>
            <tr>
                <td><label>Primary Email</label></td>
                <td><form:input path="primaryEmail"/></td>
            </tr>

            <tr>
                <td><label>Status</label></td>
                <td><form:input path="status"/></td>
            </tr>
            <tr>
                <td><label>Disposition</label></td>
                <td><form:input path="disposition"/></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="Submit" value="Save" class="save" /></td>
            </tr>
            </tbody>

        </table>

    </form:form>

    <div style="clear; both;"></div>
    <p>
        <a href="${pageContext.request.contextPath}/customer/list">Back To List</a>
    </p>

</div>
</body>

</html>