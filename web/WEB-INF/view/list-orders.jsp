<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
    <title>List Orders</title>
    <!--  reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
<div id="wrapper">
    <div id="header">
        <h2> G Tracker - List Orders</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <!--  put new button: Add Order -->
        <input type="button" value="Add Order"
               onClick="window.location.href='showFormForAdd'; return false;"
               class="add-button"
        />

        <!--  add html table here -->

        <table>
            <tr>
                <th>Order Number</th>
                <th>Order Date</th>
                <th>Email Address</th>
                <th>Customer Name</th>
                <th>Shipping Address Line 1</th>
                <th>Shipping Address Line 2</th>
                <th>Shipping City</th>
                <th>Shipping State</th>
                <th>Shipping Country</th>
                <th>Shipping Zipcode</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <!--  loop over and print our orders -->


            <c:forEach var="tempOrder" items="${orders}">

                <!--  create an update link with order id -->
                <c:url var="updateLink" value="/order/showFormForUpdate">
                    <c:param name="orderId" value="${tempOrder.id}" />
                </c:url>

                <!--  create a delete link with order id -->
                <c:url var="deleteLink" value="/order/delete">
                    <c:param name="orderId" value="${tempOrder.id}" />
                </c:url>



                <tr>
                    <td>${tempOrder.orderNumber}</td>
                    <td>${tempOrder.orderDate}</td>
                    <td>${tempOrder.emailAddress}</td>
                    <td>${tempOrder.customerName}</td>
                    <td>${tempOrder.shippingAddressLine1}</td>
                    <td>${tempOrder.shippingAddressLine2}</td>
                    <td>${tempOrder.shippingCity}</td>
                    <td>${tempOrder.shippingState}</td>
                    <td>${tempOrder.shippingCountry}</td>
                    <td>${tempOrder.shippingZipcode}</td>
                    <td>${tempOrder.status}</td>
                    <td>
                        <!-- action -->
                        <!--  display the update link -->
                        <a href="${updateLink}">Update</a>
                        <!-- javascript to prompt user -->
                        <a href="${deleteLink}"
                           onClick="if(!(confirm('Are You Sure You Want To Delete This Order?')))return false">Delete</a>
                    </td>
                </tr>

            </c:forEach>

        </table>
    </div>
</div>

</body>

</html>