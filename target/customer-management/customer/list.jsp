<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Danh Sách Khách Hàng</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers?action=create">Thêm khách hàng mới</a>
</p>
<table border="1">
    <tr>
        <th>Họ và Tên</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Sửa</th>
        <th>Xóa</th>
    </tr>
    <c:forEach items="${requestScope.customers}" var="customer">
        <tr>
            <td><a href="${pageContext.request.contextPath}/customers?action=view&id=${customer.id}">${customer.name}</a></td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td><a href="${pageContext.request.contextPath}/customers?action=edit&id=${customer.id}">Sửa</a></td>
            <td><a href="${pageContext.request.contextPath}/customers?action=delete&id=${customer.id}">Xóa</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>