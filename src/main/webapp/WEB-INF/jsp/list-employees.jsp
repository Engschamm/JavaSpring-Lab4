<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Lab 4 - JSTL</title>
    <style>
        table { width: 60%; margin: 50px auto; border-collapse: collapse; }
        th, td { border: 1px solid #333; padding: 10px; text-align: center; }
        th { background-color: #f2f2f2; }

        /* CSS tô màu đỏ cho lương cao */
        .text-red { color: red; font-weight: bold; }
    </style>
</head>
<body>

    <h2 style="text-align: center">DANH SÁCH NHÂN VIÊN</h2>

    <table>
        <thead>
            <tr>
                <th>Mã NV</th>
                <th>Tên</th>
                <th>Lương ($)</th>
                <th>Xếp loại</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${danhSachNhanVien}" var="emp">

                <tr class="${emp.salary > 1000 ? 'text-red' : ''}">
                    <td>${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.salary}</td>

                    <td>
                        <c:choose>
                            <c:when test="${emp.salary > 1000}">
                                <span>Giỏi</span>
                            </c:when>
                            <c:otherwise>
                                <span>Khá</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>