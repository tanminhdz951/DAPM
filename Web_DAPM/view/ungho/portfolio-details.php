<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="../nguoidung/asset/css/bootstrap.min.css" rel="stylesheet">
  <link href="../nguoidung/css/style.css" rel="stylesheet">

 
</head>

<body style="background-color: #c3e8f8;;" >

    <nav >
        <!--<div class="header1"> -->
        <div class="logo">
            <img src="../nguoidung/images/dnlogo.png" alt="Logo Image">
        </div>
        <div class="hamburger" style="text-align: center;width:auto;">
            <h5  style="color: red;font-size:18px;font-weight:bold;">SỨ MỆNH ĐẶC BIỆT<br></h5>
            <h6>ỦNG HỘ LŨ LỤT</h6>

        </div>
        <ul class="nav-links">
            <li><a href="#">Trang chủ</a></li>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Tin tức</a></li>
            <li><a href="#">Hoạt động</a></li>
            <?php  
                if (isset($_SESSION['username'])) {
                   ?> <li>
                    <a class="login-button" href="view/nguoidung/nguoidung.php" style="padding: 5px 15px;border-radius:2px;" >
                        <?php 
                            echo $_SESSION['full_hoten'];
                        ?>
                    </a>
                   </li> 
                   <?php
                }
                else{
                    ?>
                        <li><a class="login-button" href="view/login/login.php">Sign In</a> </li>
                    <?php
                }
            ?>
        </ul>
        <div class="find" style="margin-top: 10px;">

            <ul>
                <li>Đà Nẵng - thứ, ngày, tháng ,năm</li>
            </ul>
            <input class="search" type="text" placeholder="Search here">
            <a class="tk"><i class="fas fa-search-location"></i></a>
        </div>

    </nav>

  </header><!-- #header -->

  <main id="main" style="padding: 20px;">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Đăng ký người ủng hộ</h2>
        </div>

      </div>
    </section><!-- Breadcrumbs Section -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">
                <ul>
                      <li>Họ và tên người ủng hộ</li>
                      <li><input type="text" name="fname"></li>
                      <li>Đợt cứu trợ</li>
                      <li><input type="text" name="fdot"></li>
                      <li>Hình thức ủng hộ</li>
                      <li><input type="text" name="fuho"></li>
                
                      <li >Số lượng</li>
                      <li ><input class="set" type="number" name="fsluong"></li>
                    
                      <li >Đơn vị</li>
                      <li ><input class="set" type="text" name="fdvi"></li>
                    
                      <li>Hình thức thanh toán</li>
                      <li><input type="text" name="fttoan"></li>
                      <li>Ghi chú:</li>
                      <li><input type="text" name="fgchu"></li>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <img src="" alt="hình đại diện">
            </div>
            <div class="portfolio-description">
              <h2>This is an example of portfolio detail</h2>
              <p>
                Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.
              </p>
            </div>
            <div class="">
              <input type="submit" value="Đăng ký" style="border-radius: 10px;">
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <p>Cứu trợ, nhịp cầu nối liền những trái tim</p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <ul>
              <li><a href="#"><i class="fa fa-phone" >Hotline: 0363907251</i></a></li>
              
            </ul>
          </div>


        </div>
      </div>
    </div>
      
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>