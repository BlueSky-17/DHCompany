<!DOCTYPE html>
<html lang="en">

<head>
  <title>DHCompany - Login</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="public/uploads/favicon.png" />
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css"
    href="public/fonts/iconic/css/material-design-iconic-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="public/css/util.css">
  <link rel="stylesheet" type="text/css" href="public/css/main.css">
  <!--===============================================================================================-->

</head>


<body>

  <div class="limiter">
    <div class="container-login100" style="background-image: url('public/img/background.jpg');">
      <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">

        <form method="POST" class="login100-form validate-form" data-aos="fade-up">

          <span class="login100-form-title p-b-49">
            Sign In
          </span>

          <div class="wrap-input100 validate-input m-b-23" data-validate="Email is required">
            <span class="label-input100">Email</span>
            <input class="input100" type="text" name="email" placeholder="Type your email">
            <span class="focus-input100" data-symbol="&#xf206;"></span>
          </div>

          <div class="wrap-input100 validate-input" data-validate="Password is required">
            <span class="label-input100">Password</span>
            <input class="input100" type="password" name="password" placeholder="Type your password">
            <span class="focus-input100" data-symbol="&#xf190;"></span>
          </div>

          <?php

                    if (isset($err)) {
                        echo '<p class="login-box-msg" style="color: red">' . $err . '</p>';
                        unset($err);
                    }
                    ?>

          <div class="text-right -t-8 p-b-31">
            <a href="#" style="color:grey">
              Forgot password?
            </a>
          </div>

          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <button class="login100-form-btn" name="submit-btn">
                <strong>sign in</strong>
              </button>
            </div>
          </div>



          <div class="flex-col-c p-t-70">
            <span class="txt1 p-b-0">
              <a href="index.php?page=main&controller=register&action=index" style="color: grey;">Sign Up</a>
            </span>
          </div>


          <div class="flex-col-c p-t-20">
            <span class="txt1 p-b-0">
              <a href="index.php?page=main&controller=layouts&action=index" style="color: grey;">Return Home</a>
            </span>
          </div>

      </div>



      </form>
    </div>
  </div>
  </div>


  <div id="dropDownSelect1"></div>

  <!--===============================================================================================-->
  <script src="public/vendor/jquery/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="public/vendor/animsition/js/animsition.min.js"></script>
  <!--===============================================================================================-->
  <script src="public/vendor/bootstrap/js/popper.js"></script>
  <script src="public/vendor/bootstrap/js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
  <script src="public/vendor/select2/select2.min.js"></script>
  <!--===============================================================================================-->
  <script src="public/vendor/daterangepicker/moment.min.js"></script>
  <script src="public/vendor/daterangepicker/daterangepicker.js"></script>
  <!--===============================================================================================-->
  <script src="public/vendor/countdowntime/countdowntime.js"></script>
  <!--===============================================================================================-->
  <script src="public/js/main.js"></script>

</body>

</html>