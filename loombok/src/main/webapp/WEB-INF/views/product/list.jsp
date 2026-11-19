<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Danh sách sản phẩm - LoomBook</title>
</head>
<body>
    <section class="page-section">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Danh sách sản phẩm</h2>
                <h3 class="section-subheading text-muted">Quản lý tất cả sản phẩm trong hệ thống</h3>
            </div>

            <c:if test="${not empty successMessage}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <i class="fas fa-check-circle me-2"></i>${successMessage}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>

            <div class="mb-3">
                <a href="${pageContext.request.contextPath}/product/insert" class="btn btn-primary text-uppercase">
                    <i class="fas fa-plus me-1"></i>Thêm sản phẩm mới
                </a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Danh mục</th>
                            <th>Số lượng</th>
                            <th>Mô tả</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${products}">
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.name}</td>
                                <td><fmt:formatNumber value="${product.price}" type="currency" currencyCode="VND" maxFractionDigits="0"/>${product.price}</td>
                                <td>${product.category}</td>
                                <td>${product.quantity}</td>
                                <td>${product.description}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/product/edit/${product.id}" class="btn btn-sm btn-warning">
                                        <i class="fas fa-edit"></i> Sửa
                                    </a>
                                    <a href="${pageContext.request.contextPath}/product/delete/${product.id}" class="btn btn-sm btn-danger"
                                       onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này?')">
                                        <i class="fas fa-trash"></i> Xóa
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty products}">
                            <tr>
                                <td colspan="7" class="text-center text-muted">Chưa có sản phẩm nào</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</body>
</html>
