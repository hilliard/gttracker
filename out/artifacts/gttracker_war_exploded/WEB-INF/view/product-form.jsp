<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Save Product</title>

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
        <h2>Products - Product Manager</h2>
    </div>
</div>

<div id="container">
    <h3>Save Product</h3>

    <form:form action="saveProduct" modelAttribute="products" method="POST">
        <!--  need to associate this data with customer id  -->
        <!--  the backend needs this to ensure data flows correctly and perform update operation -->
        <form:hidden path="id" />

        <table>
            <tbody>
            <tr>
                <td><label>Product Sku</label></td>
                <td><form:input path="productSku"/></td>
            </tr>
            <tr>
                <td><label>Product Name</label></td>
                <td><form:input path="productName"/></td>
            </tr>
            <tr>
                <td><label>Brand Name</label></td>
                <td><form:input path="brandName"/></td>
            </tr>
            <tr>
                <td><label>Model Number</label></td>
                <td><form:input path="modelNumber"/></td>
            </tr>
            <tr>
                <td><label>Description</label></td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td><label>Category</label></td>
                <td><form:input path="category"/></td>
            </tr>
            <tr>
                <td><label>Quantity</label></td>
                <td><form:input path="quantity"/></td>
            </tr>
            <tr>
                <td><label>Price</label></td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td><label>Image Name</label></td>
                <td><form:input path="imagename"/></td>
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
        <a href="${pageContext.request.contextPath}/product/list">Back To List</a>
    </p>

</div>
</body>

</html>