<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tạo khách hàng mới</title>
</head>
<body>
<h1>Tạo Khách Hàng Mới</h1>
<p>
    <c:if test="${not empty requestScope.message}">
        <span>${requestScope.message}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/customers">Quay lại danh sách</a>
</p>
<form action="${pageContext.request.contextPath}/customers?action=create" method="post">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Họ và Tên: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="email" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Lưu khách hàng"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>