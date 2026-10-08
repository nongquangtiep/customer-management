<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết khách hàng</title>
</head>
<body>
<h1>Chi Tiết Khách Hàng</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers">Quay lại danh sách</a>
</p>
<table>
    <tr>
        <td>Mã khách hàng: </td>
        <td>${requestScope.customer.id}</td>
    </tr>
    <tr>
        <td>Họ và Tên: </td>
        <td>${requestScope.customer.name}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope.customer.email}</td>
    </tr>
    <tr>
        <td>Địa chỉ: </td>
        <td>${requestScope.customer.address}</td>
    </tr>
</table>
</body>
</html>