<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xóa khách hàng</title>
</head>
<body>
<h1>Xóa Khách Hàng</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers">Quay lại danh sách</a>
</p>
<form action="${pageContext.request.contextPath}/customers?action=delete" method="post">
    <h3>Bạn có chắc chắn muốn xóa khách hàng này?</h3>
    <input type="hidden" name="id" value="${requestScope.customer.id}">
    <table>
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
        <tr>
            <td></td>
            <td><input type="submit" value="Xóa"></td>
        </tr>
    </table>
</form>
</body>
</html>