<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật thông tin khách hàng</title>
</head>
<body>
<h1>Cập Nhật Khách Hàng</h1>
<p>
    <c:if test="${not empty requestScope.message}">
        <span>${requestScope.message}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/customers">Quay lại danh sách</a>
</p>
<form action="${pageContext.request.contextPath}/customers?action=edit" method="post">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <input type="hidden" name="id" value="${requestScope.customer.id}">
        <table>
            <tr>
                <td>Họ và Tên: </td>
                <td><input type="text" name="name" id="name" value="${requestScope.customer.name}"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="email" name="email" id="email" value="${requestScope.customer.email}"></td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td><input type="text" name="address" id="address" value="${requestScope.customer.address}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Cập nhật"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>