<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Đăng ký - LoomBook</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    <style>
        .register-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
            padding: 40px 0;
        }
        .register-card {
            background: #fff;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 500px;
        }
        .register-card h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-family: 'Montserrat', sans-serif;
        }
        .error-message {
            color: #dc3545;
            font-size: 0.85em;
            margin-top: 4px;
        }
        .btn-register {
            background-color: #ffc800;
            border-color: #ffc800;
            color: #212529;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .btn-register:hover {
            background-color: #e6b400;
            border-color: #e6b400;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-card">
            <h2><i class="fas fa-user-plus me-2"></i>Đăng ký tài khoản</h2>

            <form:form action="${pageContext.request.contextPath}/register" method="post" modelAttribute="registerForm">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Họ và tên</label>
                    <form:input path="fullName" cssClass="form-control" id="fullName" placeholder="Nhập họ và tên" />
                    <form:errors path="fullName" cssClass="error-message" element="div" />
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <form:input path="email" cssClass="form-control" id="email" placeholder="Nhập email" />
                    <form:errors path="email" cssClass="error-message" element="div" />
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Số điện thoại</label>
                    <form:input path="phone" cssClass="form-control" id="phone" placeholder="Nhập số điện thoại" />
                    <form:errors path="phone" cssClass="error-message" element="div" />
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <form:password path="password" cssClass="form-control" id="password" placeholder="Nhập mật khẩu (tối thiểu 6 ký tự)" />
                    <form:errors path="password" cssClass="error-message" element="div" />
                </div>

                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Xác nhận mật khẩu</label>
                    <form:password path="confirmPassword" cssClass="form-control" id="confirmPassword" placeholder="Nhập lại mật khẩu" />
                    <form:errors path="confirmPassword" cssClass="error-message" element="div" />
                </div>

                <div class="d-grid mb-3">
                    <button type="submit" class="btn btn-register btn-lg">Đăng ký</button>
                </div>
            </form:form>

            <div class="text-center">
                <span class="text-muted">Đã có tài khoản?</span>
                <a href="${pageContext.request.contextPath}/login" class="text-decoration-none">Đăng nhập</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
