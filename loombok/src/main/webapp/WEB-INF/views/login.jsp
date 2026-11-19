<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Đăng nhập - LoomBook</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    <style>
        .login-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
        }
        .login-card {
            background: #fff;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 450px;
        }
        .login-card h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-family: 'Montserrat', sans-serif;
        }
        .form-floating {
            margin-bottom: 15px;
        }
        .error-message {
            color: #dc3545;
            font-size: 0.85em;
            margin-top: 4px;
        }
        .btn-login {
            background-color: #ffc800;
            border-color: #ffc800;
            color: #212529;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .btn-login:hover {
            background-color: #e6b400;
            border-color: #e6b400;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <h2><i class="fas fa-sign-in-alt me-2"></i>Đăng nhập</h2>

            <c:if test="${not empty successMessage}">
                <div class="alert alert-success" role="alert">
                    ${successMessage}
                </div>
            </c:if>

            <form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="loginForm">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <form:input path="email" cssClass="form-control" id="email" placeholder="Nhập email của bạn" />
                    <form:errors path="email" cssClass="error-message" element="div" />
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <form:password path="password" cssClass="form-control" id="password" placeholder="Nhập mật khẩu" />
                    <form:errors path="password" cssClass="error-message" element="div" />
                </div>

                <div class="d-grid mb-3">
                    <button type="submit" class="btn btn-login btn-lg">Đăng nhập</button>
                </div>
            </form:form>

            <div class="text-center">
                <a href="${pageContext.request.contextPath}/forgetpassword" class="text-decoration-none">Quên mật khẩu?</a>
                <br/>
                <span class="text-muted">Chưa có tài khoản?</span>
                <a href="${pageContext.request.contextPath}/register" class="text-decoration-none">Đăng ký ngay</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
