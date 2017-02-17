<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Save Order</title>

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
        <h2>Orders - Order Manager</h2>
    </div>
</div>

<div id="container">
    <h3>Save Order</h3>

    <form:form action="saveOrder" modelAttribute="orders" method="POST">
        <!--  need to associate this data with order id  -->
        <!--  the backend needs this to ensure data flows correctly and perform update operation -->
        <form:hidden path="id" />

        <table>
            <tbody>
            <tr>
                <td><label>Order Number</label></td>
                <td><form:input path="orderNumber"/></td>
            </tr>
            <tr>
                <td><label>Order Date</label></td>
                <td><form:input path="orderDate"/></td>
            </tr>
            <tr>
                <td><label>Email Address</label></td>
                <td><form:input path="emailAddress"/></td>
            </tr>
            <tr>
                <td><label>Customer Name</label></td>
                <td><form:input path="customerName"/></td>
            </tr>
            <tr>
                <td><label>Shipping Address Line 1</label></td>
                <td><form:input path="shippingAddressLine1"/></td>
            </tr>
            <tr>
                <td><label>Shipping Address Line 2</label></td>
                <td><form:input path="shippingAddressLine2"/></td>
            </tr>
            <tr>
                <td><label>Shipping City</label></td>
                <td><form:input path="shippingCity"/></td>
            </tr>
            <tr>
                <td><label>Shipping State</label></td>
                <td><form:input path="shippingState"/></td>
            </tr>
            <tr>
                <td><label>Shipping Country</label></td>
                <td><form:input path="shippingCountry"/></td>
            </tr>
            <tr>
                <td><label>Shipping ZipCode</label></td>
                <td><form:input path="shippingZipcode"/></td>
            </tr>
            <tr>
                <td><label>Status</label></td>
                <td><form:input path="status"/></td>
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
        <a href="${pageContext.request.contextPath}/order/list">Back To List</a>
    </p>

</div>
</body>

</html>