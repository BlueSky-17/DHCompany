<?php
include_once('views/normal/navbar.php');
?>
<main id='main'>
  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h1 style="color: white;" class="mt-4"><strong>KẾT NỐI</strong></h1>
        <ol>
          <li><a href="index.php?user=normal&controller=layouts&action=index">Trang chủ</a></li>
          <li><a href="index.php?user=normal&controller=contact&action=index">Kết nối</a></li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section id="contact" class="contact">
    <div class="container">

      <div class="row justify-content-center" data-aos="fade-up">

        <div class="col-lg-10">
          <?php
          foreach ($companies as $branch)
          {
            echo '
            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-6 info">
                  <i class="bi bi-geo-alt"></i>
                  <h4>CHI NHÁNH</h4>
                  <p>' . $branch->name . '</p>
                </div>

                <div class="col-lg-6 info mt-4 mt-lg-0">
                  <i class="bi bi-map"></i>
                  <h4>ĐỊA CHỈ</h4>
                  <p>' . $branch->address . '</p>
                </div>
              </div>
            </div>
            ';
          }
          ?>

        </div>

      </div>

    </div>
  </section><!-- End Contact Section -->

</main><!-- End #main -->
<?php
include_once('views/normal/footer.php');
?>