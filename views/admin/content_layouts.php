</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    <!-- Navbar-->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links-->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button">
            <i class="fas fa-bars"></i>
          </a>
        </li>
      </ul>
      <!-- Right navbar links-->
      <ul class="navbar-nav ml-auto">
        <!-- Navbar Search-->
        <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            <i class="fas fa-expand-arrows-alt"></i>
          </a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a class="nav-link" href="index.php?page=admin&controller=login&action=logout">Logout</a>
        </li>
      </ul>
    </nav>
    <!-- /.navbar-->
    <!-- Main Sidebar Container-->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Sidebar-->
      <div class="sidebar">
      <!-- Brand Logo-->
      <a class="brand-link" href="index.php">
        <img class="brand-image img-circle elevation-3" src="public\uploads\DHCompany_Icon.png" alt="DHCompany Icon">
        <span class="brand-text font-weight-light">DHCompany</span>
      </a>
        <!-- Sidebar Menu-->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!--Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=layouts&action=index">
                <i class="nav-icon fas fa-fw fa-tachometer-alt"></i>
                <p>Dashboard</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=company&action=index">
                <i class="nav-icon fa fa-newspaper" aria-hidden="true"></i>
                <p>Quản lý chi nhánh</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=admin&action=index">
                <i class="nav-icon fas fa-user-graduate"> </i>
                <p>Quản lý thành viên</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=products&action=index">
                <i class="nav-icon fas fa-cube"></i>
                <p>Quản lý sản phẩm</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=news&action=index">
                <i class="nav-icon fa fa-file" aria-hidden="true"></i>
                <p>Quản lý bài viết</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=comments&action=index">
                <i class="nav-icon fas fa-comments"></i>
                <p>Quản lý bình luận</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?page=admin&controller=user&action=index">
                <i class="nav-icon fas fa-users-cog"></i>
                <p>Liên hệ khách hàng</p>
              </a>
            </li>
          </ul>
          <!-- Content Wrapper. Contains page content-->
        </nav>
      </div>
    </aside>
  </div>
</body>