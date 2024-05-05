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

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-8">
					<h1>Chào mừng đến với khu vực Quản trị của DHCompany!</h1>
				</div>
				<div class="col-sm-4">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Dashboard</li>
					</ol>
				</div>
			</div>
		</div><!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="invoice p-3 mb-3">
				<p>Chào mừng đến với DHCompany</p>
				<p>DHCompany chính là con người và văn hóa doanh nghiệp. Với kim chỉ nam là 3 giá trị cốt lõi, các thành viên ở DHCompany luôn có tinh thần cống hiến vì sự phát triển chung của DHCompany và cộng đồng. </p>
				<!-- /.row -->
			</div>
			<div class="row">
				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=admin&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-primary mb-1">
									Quản lý Thành viên</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-user-graduate fa-2x text-primary"></i>
								</div>
							</div>
						</div>
					</div>
				</a>

				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=comments&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-success mb-1">
									Quản lý bình luận</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-comments fa-2x text-success"></i>
								</div>
							</div>
						</div>
					</div>
				</a>

				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=products&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-info mb-1">
									Quản lý sản phẩm</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-cube fa-2x text-info"></i>
								</div>
							</div>
						</div>
					</div>
				</a>

				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=news&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-danger mb-1">
									Quản lý bài viết</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-file fa-2x text-danger"></i>
								</div>
							</div>
						</div>
					</div>
				</a>

				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=company&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-secondary mb-1">
									Quản lý chi nhánh</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-newspaper fa-2x text-secondary"></i>
								</div>
							</div>
						</div>
					</div>
				</a>

				<!-- Earnings (Monthly) Card Example -->
				<a href="index.php?user=admin&controller=user&action=index" class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="row card-body justify-content-center">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="h5 font-weight-bold text-warning mb-1">
									Quản lý thông tin khách hàng</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-users-cog fa-2x text-warning"></i>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div><!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<?php
require_once('views/admin/footer.php'); ?>

<!-- Add Javascripts -->


</body>

</html>