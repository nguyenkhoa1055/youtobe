<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet"
	href="/PS24828_NguyenDangKhoa_ASM_Final/css/nav.css">
<link rel="stylesheet"
	href="/PS24828_NguyenDangKhoa_ASM_Final/css/detail.css">
</head>
<style>
.title {
	font-family: "YouTube Sans", Roboto, sans-serif;
	font-size: 20px;
	line-height: 28px;
	text-align: start;
	font-weight: 600;
	letter-spacing: normal;
}

.card {
	border: 0px !important;
}
</style>
<body>
	<script>
		// Lấy giá trị tham số id từ URL
		const urlParams = new URLSearchParams(window.location.search);
		const itemId = urlParams.get('id');
		const like = urlParams.get('id');
		const dislike = urlParams.get('id');
	</script>
	<section>
		<jsp:include page="navbar.jsp"></jsp:include>
		<jsp:include page="share.jsp"></jsp:include>
	</section>
	<section>
		<div class="container-fluid col-11">
			<div class="row">
				<div class="col-md-8">
					<iframe class="w-100" height="450" title="YouTube video player"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen autoplay
						src="https://www.youtube.com/embed/${form.id}"> Your
						browser does not support HTML video. </iframe>
					<p class="title my-0">${form.title}</p>
					<div class="row">
						<div class="col-6">
							<p class="my-0">${form.views}Views</p>
							<p class="my-0"></p>
						</div>
						<div class="interact">
							<div class="btn-group mr-2" role="group"
								aria-label="Second group">
								<button type="button" class="btn btn-outline-secondary">
									<a href="#"
										onclick="event.preventDefault(); window.location.href='${url}?like=${form.id}'"
										class="btn detail" type="button"> <i
										class="bi bi-hand-thumbs-up-fill"></i>1N
									</a>
								</button>
								<button type="button" class="btn btn-outline-secondary">
									<a href="#"
										onclick="event.preventDefault(); window.location.href='${url}?dislike=${form.id}'"
										class="btn detail" type="button"> <i
										class="bi bi-hand-thumbs-down-fill"></i>
									</a>
								</button>
							</div>
							<button class="btn mx-3 rounded-pill detail" type="button"
								data-bs-toggle="modal" data-bs-target="#myModal">
								<i class="bi bi-share-fill"></i>Share
							</button>
						</div>
					</div>
					<div class="card">
						<textarea class="w-100 my-3" name="" id="" cols="30" rows="5">${form.description}</textarea>
					</div>
				</div>
				<div class="d-flex flex-column col-md-4">
					<jsp:include page="list.jsp" />
				</div>
			</div>
		</div>
	</section>
</body>
</html>