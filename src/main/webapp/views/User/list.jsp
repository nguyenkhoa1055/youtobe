<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<style>
.dots {
	border: 0px;
}

.dots:focus {
	border: 0px;
}
</style>
<c:forEach var="random" items="${random}">
	<div>
		<div class="card" style="margin-bottom: 1rem;">
			<div class="row">
				<div class="col-7">
					<a href="/PS24828_NguyenDangKhoa_ASM_Final/detail"
						onclick="event.preventDefault(); window.location.href='/PS24828_NguyenDangKhoa_ASM_Final/detail?id=${random.id}'">

						<c:if test="${not empty random.poster}">
							<img class="w-100" style="height: 100px; object-fit: cover; border-radius: 5px"
								src="https://img.youtube.com/vi/${random.poster}/maxresdefault.jpg"
								alt="Card image">
						</c:if> <c:if test="${empty random.poster}">
							<img class="w-100" style="height: 100px; object-fit: cover; border-radius: 5px"
								src="/PS24828_NguyenDangKhoa_ASM_Final/files/str.jpg" alt="Card image">
						</c:if>
					</a>
				</div>
				<div class="col-5 px-0">
					<div class="row">
						<div class="col-12">
							<p style="font-size:15px;" class="title m-0">${random.title }</p>
							<p class="m-0">${random.views} Views</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
