<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Home Page</title>

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
                <h2>GT Tracker - Track Things</h2>
            </div>
        </div>

        <div id="container">
            <h3 align="center">Choose Sumpin</h3>
        </div>
        <table align="center">
            <tbody>
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/product/list">Products</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/customer/list">Customers</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/order/list">Orders</a>
                </td>
            </tr>
            </tbody>
        </table>
    </body>
</html>
