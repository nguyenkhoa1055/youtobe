
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<c:url var="url" value="/login" />
<div class="modal fade" id="myModal2">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">Quên Mật Khẩu</h4>
				<button type="button" class="" data-bs-dismiss="modal"></button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
			<mark>${message2 }</mark>
				<form action="${url}" class="was-validated" method="post">
					<div class="mb-3 ">
						<label for="username" class="form-label"> Tài Khoản:
						</label> <input name="usernameID" type="text" id="username" class="form-control" placeholder="Username" required>
					</div>
					<div class="mb-3 ">
						<label for="email" class="form-label"> Email:
						</label> <input name="emailID" type="email" id="email" class="form-control" placeholder="Email" required>
					</div>
					<div class="d-flex justify-content-end">
						<button class="btn btn-primary btnOK" formaction="${url}/forgot">OK</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div> 