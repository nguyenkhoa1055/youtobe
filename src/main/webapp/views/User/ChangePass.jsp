<%@ page 
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="/PS24828_NguyenDangKhoa_ASM_Final/css/nav.css"><link>
</head>
<body>
	<section>
	<jsp:include page="navbar.jsp"></jsp:include>
	</section>
	<div class="container col-6">
		<form action="/PS24828_NguyenDangKhoa_ASM_Final/ChangePass" method="post" class="">
						<mark>${message}</mark>
						<h2 style="text-align: center;">Đổi Mật Khẩu</h2>
                        <div class="form-outline my-4 mx-5">
                            <div class="form-floating">
                                <input name="password" type="password" id="crpass" class="form-control" placeholder="Nhập Mật Khẩu Cũ" required>
                                <label for="crpass" class="form-label">Nhập Mật Khẩu Cũ</label>
                            </div>
                        </div>
                        <div class="form-outline my-4 mx-5">
                            <div class="form-floating">
                                <input name="newPass" type="password" id="npass" class="form-control" placeholder="Nhập Mật Khẩu Mới" required>
                                <label for="npass" class="form-label">Nhập Mật Khẩu Mới</label>   
                            </div>
                        </div>
                        <div class="form-outline my-4 mx-5">
                            <div class="form-floating">
                                <input name="cfPass" type="password" id="cfpass" class="form-control" placeholder="Xác Nhận Mật Khẩu Mới" required>
                                <label for="cfpass" class="form-label">Xác Nhận Mật Khẩu Mới</label>
                            </div>
                        </div>
                        <div class="d-flex justify-content-end mx-5">
                            <button type="submit" class="btn btn-primary btnOK" ng-click="submit">Đổi</button>
                        </div>
          </form>
	</div>
</body>
</html>