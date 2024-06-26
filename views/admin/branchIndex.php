<?php
session_start();
if (!isset($_SESSION["user"])) {
	header("Location: index.php?user=admin&controller=login&action=index");
}
?>
<?php
require_once('views/admin/header.php'); ?>

<!-- Add CSS -->


<?php
require_once('views/admin/content_layouts.php'); ?>


<!-- Code -->
<div class="content-wrapper">
	<!-- Add Content -->
	<!-- Content Header (Page header)-->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Quản lý thông tin chi nhánh</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Thông tin chi nhánh</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid-->
	</section>
	<!-- Main content-->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<!-- Button trigger modal-->
							<div class="d-flex justify-content-end mb-2">
								<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#addCompanyModal">Thêm chi nhánh</button>
							</div>	
							<!-- Modal-->
							<div class="modal fade" id="addCompanyModal" tabindex="-1" role="dialog" aria-labelledby="addCompanyModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">Thêm chi nhánh</h5>
											<button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										</div>
										<form action="index.php?user=admin&controller=branch&action=add" method="post">
											<div class="modal-body">
												<div class="form-group">
													<label>Tên chi nhánh</label>
													<input class="form-control" type="text" placeholder="Tên chi nhánh" name="name" />
												</div>
												<div class="form-group">
													<label>Địa chỉ chi nhánh</label>
													<input class="form-control" type="text" placeholder="Địa chỉ chi nhánh" name="address" />
												</div>
											</div>
											<div class="modal-footer">
												<button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
												<button class="btn btn-primary" type="submit">Xác nhận</button>
											</div>
										</form>
									</div>
								</div>
							</div>

							<table class="table table-bordered table-striped table-hover" id="tab-company">
								<thead>
									<tr class="text-center table-info">
										<th>STT</th>
										<th>Tên chi nhánh</th>
										<th>Địa chỉ chi nhánh</th>
										<th>Cập nhật lần cuối</th>
										<th>Thao tác</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$counter = 1;
									foreach ($branch as $branch) {
										echo "<tr class='text-center'>";
										echo "<td>" . $counter . "</td>";
										echo "<td>" . $branch->name . "</td>";
										echo "<td>" . $branch->address . "</td>";
										echo "<td>" . $branch->updateAt . "</td>";
										echo "<td>
											<btn class='btn-edit btn btn-primary btn-xs' style='margin-right: 5px' data-id=$branch->id data-name='$branch->name' data-address='$branch->address'> <i class='fas fa-edit'></i></btn>
											<btn class='btn-delete btn btn-danger btn-xs' style='margin-right: 5px' data-id=$branch->id data-name='$branch->name'> <i class='fas fa-trash'></i></btn>
											</td>";
										echo "</tr>";
										$counter++;
									}
									?>
								</tbody>
							</table>

							<div class="modal fade" id="EditCompanyModal" tabindex="-1" role="dialog" aria-labelledby="EditCompanyModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">Chỉnh sửa</h5>
											<button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										</div>
										<form action="index.php?user=admin&controller=branch&action=edit" method="post">
											<div class="modal-body">
												<input type="hidden" name="id" />
												<div class="form-group">
													<input class="form-control" type="hidden" placeholder="Id" name="id" readonly />
												</div>
												<div class="form-group">
													<label>Tên chi nhánh</label>
													<input class="form-control" type="text" placeholder="Please enter your branch" name="name" />
												</div>
												<div class="form-group">
													<label>Địa chỉ</label>
													<input class="form-control" type="text" placeholder="Please enter your address" name="address" />
												</div>
											</div>
											<div class="modal-footer">
												<button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
												<button class="btn btn-primary" type="submit">Cập nhật</button>
											</div>
										</form>
									</div>
								</div>
							</div>

							<div class="modal fade" id="DeleteCompanyModal" tabindex="-1" role="dialog" aria-labelledby="DeleteCompanyModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">Xóa</h5>
											<button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										</div>
										<form action="index.php?user=admin&controller=branch&action=delete" method="post">
											<div class="modal-body">
												<label>Chi nhánh: </label>
												<input name="name" readonly/>
												<p>Xác nhận xóa?</p>
												<input type="hidden" name="id"/>
											</div>
											<div class="modal-footer">
												<button class="btn btn-secondary btn-outline-light" type="button" data-dismiss="modal">Đóng lại</button>
												<button class="btn btn-danger btn-outline-light" type="submit">Xác nhận</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</section>
</div>


<?php
require_once('views/admin/footer.php'); ?>

<!-- Add Javascripts -->
<script src="public/js/company/index.js"></script>
</body>

</html>