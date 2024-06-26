<?php
  session_start();
  if (isset($_SESSION['guest']))
  {
    require_once('models/user.php');
    $data = User::get($_SESSION['guest']);
  }
  
?>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>DHCompany - Build technology and grow people</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="public/uploads/DHCompany_icon.png" rel="icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="public/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="public/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="public/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="public/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="public/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="public/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="public/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="public/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
  <!-- Font Awesome-->
  <link rel="stylesheet" href="public/plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables-->
  <link rel="stylesheet" href="public/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="public/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="public/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style-->
  <link rel="stylesheet" href="public/dist/css/adminlte.min.css">
  <!-- Add Style -->

  <link href="public/assets/css/style.css" rel="stylesheet">



</head>

<body>
  <?php
  if (isset($_SESSION['guest']))
  {
  echo '
    <div class="modal fade" id="EditUserModal" tabindex="-1" role="dialog" aria-labelledby="EditUserModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Chỉnh sửa</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <form action="index.php?user=normal&controller=register&action=editInfo" enctype="multipart/form-data" method="post">
          <div class="modal-body">
            <input type="hidden" name="email">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <div class="row"> </div>
                  <label>Họ và tên lót</label>
                  <input class="form-control" type="text" placeholder="Họ và tên lót" name="fname" value="' . $data->fname . '"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <div class="row"> </div>
                  <label>Tên</label>
                  <input class="form-control" type="text" placeholder="Tên" name="lname" value="' . $data->lname . '"/>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Tuổi</label>
                  <input class="form-control" type="number" placeholder="Tuổi" name="age" value="' . $data->age . '"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Giới tính:</label>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender"' . (($data->gender == '1')?'checked':"") . ' value="1" />
                        <label>Nam</label>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender"' . (($data->gender == '0')?'checked':"") . ' value="0" />
                        <label>Nữ</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label>Số điện thoại</label>
              <input class="form-control" type="number" placeholder="Số điện thoại" name="phone" value="' . $data->phone . '"/>
            </div>
            <div class="form-group">
              <label>Hình ảnh hiện tại </label>
              <input class="form-control" type="text" name="img" readonly value="' . $data->profile_photo . '" />
            </div>
            <div class="form-group">
              <label>Hình ảnh mới</label>&nbsp
              <input type="file" name="fileToUpload" id="fileToUpload" />
            </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Đóng lại</button>
            <button class="btn btn-primary" type="submit">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>';
  }
  ?>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.php"><img src="public/assets/img/DHCompany_Logo.png" class="img-fluid" alt="DHCompany Logo"></a>
      </h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a href="index.php?user=normal&controller=layouts&action=index">Trang chủ</a></li>
          <li><a href="index.php?user=normal&controller=about&action=index">Chúng tôi</a></li>
          <li><a href="index.php?user=normal&controller=services&action=index">Sản phẩm</a></li>
          <li><a href="index.php?user=normal&controller=blog&action=index">Tin tức</a></li>
          <li><a href="index.php?user=normal&controller=archive&action=index">Thành tựu</a></li>
          <li><a href="index.php?user=normal&controller=contact&action=index">Kết nối</a></li>
          <?php
          if (!isset($_SESSION["guest"])){
            echo '
              <li><a href="index.php?user=normal&controller=register&action=index" class="box-arrow-in-right"><i class="bu bi-file-lock-fill"></i></a></li> <!-- Đăng ký -->
              <li><a href="index.php?user=normal&controller=login&action=index" class="box-arrow-in-right"><i class="bu bi-person-lines-fill"></i></a></li> <!-- Đăng nhập -->
            ';
          }
          else{
            echo '
            <li><a href="" data-toggle="modal" data-target="#EditUserModal"><img style="vertical-align: middle;
  width: 40px;
  height: 40px;
  border-radius: 50%;" src="' . (file_exists($data->profile_photo) ? $data->profile_photo:"public/dist/img/avatar4.png") . '"></a></li>
            <li><a href="index.php?user=normal&controller=login&action=logout" class="box-arrow-in-right"><i class="bu bi-box-arrow-right"></i></a></li> <!-- Đăng xuất -->
            ';
          }
          ?>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links d-flex">
        <a href="https://www.facebook.com/BKCSE.Multimedia" class="facebook"><i class="bu bi-facebook"></i></a>
        <a href="https://www.facebook.com/BKCSE.Multimedia" class="youtube"><i
            class="bu bi-youtube"></i></a>
      </div>

    </div>
  </header><!-- End Header -->