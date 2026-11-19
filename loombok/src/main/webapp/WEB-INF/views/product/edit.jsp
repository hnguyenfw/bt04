<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Chỉnh sửa sản phẩm - LoomBook</title>
    <style>
        .error-message {
            color: #dc3545;
            font-size: 0.85em;
            margin-top: 4px;
        }
    </style>
</head>
<body>
    <section class="page-section">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Chỉnh sửa sản phẩm</h2>
                <h3 class="section-subheading text-muted">Cập nhật thông tin sản phẩm</h3>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card shadow">
                        <div class="card-body p-4">
                            <form:form action="${pageContext.request.contextPath}/product/edit/${productForm.id}" method="post" modelAttribute="productForm">
                                <form:hidden path="id" />

                                <div class="mb-3">
                                    <label for="name" class="form-label fw-bold">Tên sản phẩm <span class="text-danger">*</span></label>
                                    <form:input path="name" cssClass="form-control" id="name" placeholder="Nhập tên sản phẩm" />
                                    <form:errors path="name" cssClass="error-message" element="div" />
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="price" class="form-label fw-bold">Giá (VNĐ) <span class="text-danger">*</span></label>
                                        <form:input path="price" cssClass="form-control" id="price" type="number" step="1000" placeholder="Nhập giá" />
                                        <form:errors path="price" cssClass="error-message" element="div" />
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="quantity" class="form-label fw-bold">Số lượng <span class="text-danger">*</span></label>
                                        <form:input path="quantity" cssClass="form-control" id="quantity" type="number" placeholder="Nhập số lượng" />
                                        <form:errors path="quantity" cssClass="error-message" element="div" />
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="category" class="form-label fw-bold">Danh mục <span class="text-danger">*</span></label>
                                    <form:select path="category" cssClass="form-select" id="category">
                                        <form:option value="">-- Chọn danh mục --</form:option>
                                        <form:option value="Laptop">Laptop</form:option>
                                        <form:option value="Điện thoại">Điện thoại</form:option>
                                        <form:option value="Máy tính bảng">Máy tính bảng</form:option>
                                        <form:option value="Phụ kiện">Phụ kiện</form:option>
                                        <form:option value="Khác">Khác</form:option>
                                    </form:select>
                                    <form:errors path="category" cssClass="error-message" element="div" />
                                </div>

                                <div class="mb-3">
                                    <label for="description" class="form-label fw-bold">Mô tả</label>
                                    <form:textarea path="description" cssClass="form-control" id="description" rows="4" placeholder="Nhập mô tả sản phẩm" />
                                    <form:errors path="description" cssClass="error-message" element="div" />
                                </div>

                                <div class="d-flex justify-content-between">
                                    <a href="${pageContext.request.contextPath}/product/list" class="btn btn-secondary">
                                        <i class="fas fa-arrow-left me-1"></i>Quay lại
                                    </a>
                                    <button type="submit" class="btn btn-warning text-uppercase">
                                        <i class="fas fa-save me-1"></i>Cập nhật
                                    </button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
