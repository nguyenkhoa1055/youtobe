<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<link>
<style type="text/css">
.dots {
	border: 0px;
}

.dots:focus {
	border: 0px;
}

.card {
	margin-top: 50px;
}
</style>
</head>
<body>
	<section>
		<jsp:include page="navbar.jsp"></jsp:include>
	</section>
	<section>
		<c:url var="url" value="/likedVideo"></c:url>
		<div class="container">
			<div class="row">
				<c:forEach var="item" items="${list}">
					<div class="col-md-4 col-sm-12">
						<div class="card my-3">
							<a href="/PS24828_NguyenDangKhoa_ASM_Final/detail"
								onclick="event.preventDefault(); window.location.href='/PS24828_NguyenDangKhoa_ASM_Final/detail?id=${item.id}'">
								<c:if test="${not empty item.poster}">
									<img class="w-100 card-img-top"
										style="height: 200px; object-fit: cover;"
										src="https://img.youtube.com/vi/${item.poster}/maxresdefault.jpg"
										alt="Card image">
								</c:if> <c:if test="${empty item.poster}">
									<img class="w-100 card-img-top"
										style="height: 200px; object-fit: cover;"
										src="/PS24828_NguyenDangKhoa_ASM_Final/files/str.jpg"
										alt="Card image">
								</c:if>
							</a>
							<div class="card-body">
								<div class="row">
									<div class="col-11">
										<h5 class="m-0">${item.title}</h5>
										<p class="m-0">${item.views}</p>
										<%-- <p class="m-0">${item.likeDate}</p> --%>
									</div>
									<div class="interact">
										<div class="btn-group mr-2" role="group"
											aria-label="Second group">
											<button type="button" class="btn btn-outline-secondary">
												<a class="dropdown-item" href="#"
													onclick="event.preventDefault(); window.location.href='${url}?idVideo=${item.id}'">
													<i class="bi bi-hand-thumbs-down">UnLike</i>
												</a>
											</button>
										</div>
										<button type="button" class="btn btn-outline-secondary">
											<a class="dropdown-item" href="#" data-bs-toggle="modal"
												data-bs-target="#myModal"><i class="bi bi-share-fill">Share</i></a>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
</html>