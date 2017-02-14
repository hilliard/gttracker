<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
    <title>List Products</title>
    <!--  reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
<div id="wrapper">
    <div id="header">
        <h2> Products - Product Manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <!--  put new button: Add Product -->
        <input type="button" value="Add Product"
               onClick="window.location.href='showFormForAdd'; return false;"
               class="add-button"
        />

        <!--  add html table here -->

        <table>
            <tr>
                <th>Product Sku</th>
                <th>Product Name</th>
                <th>Brand Name</th>
                <th>Model Number</th>
                <th>Description</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Image Name</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <!--  loop over and print our customers -->


            <c:forEach var="tempProduct" items="${products}">

                <!--  create an update link with customer id -->
                <c:url var="updateLink" value="/product/showFormForUpdate">
                    <c:param name="productId" value="${tempProduct.id}" />
                </c:url>

                <!--  create a delete link with product id -->
                <c:url var="deleteLink" value="/product/delete">
                    <c:param name="productId" value="${tempProduct.id}" />
                </c:url>



                <tr>
                    <td>${tempProduct.productSku}</td>
                    <td>${tempProduct.productName}</td>
                    <td>${tempProduct.brandName}</td>
                    <td>${tempProduct.modelNumber}</td>
                    <td>${tempProduct.description}</td>
                    <td>${tempProduct.category}</td>
                    <td>${tempProduct.quantity}</td>
                    <td>${tempProduct.price}</td>
                    <td>${tempProduct.imagename}</td>
                    <td>${tempProduct.status}</td>
                    <td>
                        <!--  display the update link -->
                        <a href="${updateLink}">Update</a>
                        <!-- javascript to prompt user -->
                        <a href="${deleteLink}"
                           onClick="if(!(confirm('Are You Sure You Want To Delete This Product?')))return false">Delete</a>
                    </td>
                </tr>

            </c:forEach>

        </table>
    </div>
</div>

</body>

</html>