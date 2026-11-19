<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Trang chủ - LoomBook</title>
</head>
<body>
    <!-- Masthead-->
    <header class="masthead">
        <div class="container">
            <div class="masthead-subheading">Chào mừng đến với LoomBook!</div>
            <div class="masthead-heading text-uppercase">Hệ thống quản lý sản phẩm</div>
            <a class="btn btn-primary btn-xl text-uppercase" href="${pageContext.request.contextPath}/product/list">Xem sản phẩm</a>
        </div>
    </header>

    <!-- Services-->
    <section class="page-section" id="services">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Dịch vụ</h2>
                <h3 class="section-subheading text-muted">Các tính năng nổi bật của hệ thống</h3>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-box fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Quản lý sản phẩm</h4>
                    <p class="text-muted">Thêm, sửa, xóa và tìm kiếm sản phẩm dễ dàng.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-users fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Quản lý người dùng</h4>
                    <p class="text-muted">Đăng ký, đăng nhập và quản lý tài khoản.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="my-3">Bảo mật</h4>
                    <p class="text-muted">Xác thực và phân quyền an toàn.</p>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
