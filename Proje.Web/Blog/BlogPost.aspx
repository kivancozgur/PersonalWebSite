<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogPost.aspx.cs" Inherits="Proje.Web.Blog.BlogPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <title>Kıvanç Özgür</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="BreezyCV - Resume / CV / vCard Template" />
    <meta name="keywords" content="vcard, resposnive, retina, resume, jquery, css3, bootstrap, portfolio" />
    <meta name="author" content="lmpixels" />
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="../Resource/css/reset.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/bootstrap-grid.min.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/animations.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/perfect-scrollbar.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../Resource/css/main.css" type="text/css">

    <script src="../Resource/js/modernizr.custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <!-- Animated Background -->
    <div class="lm-animated-bg" style="background-image: url(../Resource/img/main_bg.png);"></div>
    <!-- /Animated Background -->

    <!-- Loading animation -->
    <div class="preloader">
      <div class="preloader-animation">
        <div class="preloader-spinner">
        </div>
      </div>
    </div>
    <!-- /Loading animation -->

    <div class="page">
      <div class="page-content">

           <header id="site_header" class="header mobile-menu-hide">
            <div class="header-content">
              <div class="header-photo">
                <img src="../Resource/img/main_photo.jpg" alt="Kıvanç Özgür">
              </div>
              <div class="header-titles">
                  <h2> <asp:Label Text="" ID="Adsoyad" runat="server" /> </h2>
                <h4><asp:Label Text="" ID="Sektor" runat="server" /></h4>
              </div>
            </div>

            <ul class="main-menu">
              <li class="active">
                <a href="../Default.aspx" class="nav-anim">
                  <span class="menu-icon lnr lnr-home"></span>
                  <span class="link-text">Anasayfa</span>
                </a>
              </li>
              <li>
                <a href="../Default.aspx#about-me" class="nav-anim">
                  <span class="menu-icon lnr lnr-user"></span>
                  <span class="link-text">Hakkımda</span>
                </a>
              </li>
              <li>
                <a href="../Default.aspx#resume" class="nav-anim">
                  <span class="menu-icon lnr lnr-graduation-hat"></span>
                  <span class="link-text">Özgeçmiş</span>
                </a>
              </li>
              <li>
                <a href="../Default.aspx#blog" class="nav-anim">
                  <span class="menu-icon lnr lnr-book"></span>
                  <span class="link-text">Blog</span>
                </a>
              </li>
              <li>
                <a href="../Default.aspx#contact" class="nav-anim">
                  <span class="menu-icon lnr lnr-envelope"></span>
                  <span class="link-text">İletişim</span>
                </a>
              </li>
            </ul>

            <div class="social-links">
              <ul>
                <li><a href="https://www.linkedin.com/in/k%C4%B1van%C3%A7-%C3%B6zg%C3%BCr-a4b16114a/" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                <li><a href="https://github.com/kivancozgur" target="_blank"><i class="fab fa-github"></i></a></li>
                <li><a href="https://www.instagram.com/kivancozgr" target="_blank"><i class="fab fa-instagram"></i></a></li>
              </ul>
            </div>

            <!-- <div class="header-buttons">
              <a href="#" target="_blank" class="btn btn-primary">CV</a>
            </div> -->

            <div class="copyrights">© 2020 All rights reserved.</div>
          </header>

          <!-- Mobile Navigation -->
          <div class="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <!-- End Mobile Navigation -->

          <div class="content-area single-page-area">
            <div class="single-page-content">

              <article class="post">

                <div class="post-thumbnail">
                  <img src="../Resource/img/blog/blog_post_1_full.jpg" alt="image">
                </div>

                <div class="post-content">
                  <!-- /Entry header -->
                  <header class="entry-header">
                    <!-- Entry meta -->
                    <div class="entry-meta entry-meta-top">
                      <span><a href="#" rel="category tag"><asp:Label runat="server" ID="Konu"></asp:Label> </a></span>        
                    </div>
                    <!-- /Entry meta -->

                    <h2 class="entry-title"><asp:Label runat="server" ID="Baslik"></asp:Label> </h2>
                  </header>
                  <!-- /Entry header -->

                  <!-- Entry content -->
                  <div class="entry-content">
                    <div class="row">
                      <div class=" col-xs-12 col-sm-12 ">
                        <div class="col-inner">
                          <p><asp:Label runat="server" ID="Icerik"></asp:Label> </p>
                         </div>
                      </div>
                    </div>
                  </div>
                  <!-- /Entry content -->
    
                  <div class="entry-meta entry-meta-bottom">
                    <div class="date-author">
                      <span class="entry-date">
                        <a href="#" rel="bookmark">
                          <i class="far fa-clock"></i> <span class="entry-date"> <asp:Label runat="server" ID="Tarih"></asp:Label> </span>
                        </a>
                      </span>
                      <span class="author vcard">
                        <a class="url fn n" href="#" rel="author"> <i class="fas fa-user"></i> <asp:Label runat="server" ID="Yazar"></asp:Label> </a>
                      </span>
                    </div>  
      
                    <!-- Share Buttons -->
                    <div class="entry-share btn-group share-buttons">
                      <a href="https://github.com/kivancozgur/PersonalWebSite" target="_blank" title="Share on Facebook">
                        <i class="fab fa-github"></i>
                      </a>

                      <a href="https://www.linkedin.com/in/k%C4%B1van%C3%A7-%C3%B6zg%C3%BCr-a4b16114a/?originalSubdomain=tr"  class="btn" title="Share on LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                      </a>
                    </div>
                    <!-- /Share Buttons -->
                  </div>
                </div>
              </article>

            </div>
          </div>

      </div>
    </div>

    <script src="../Resource/js/jquery-2.1.3.min.js"></script>
    <script src="../Resource/js/modernizr.custom.js"></script>
    <script src="../Resource/js/animating.js"></script>

    <script src="../Resource/js/imagesloaded.pkgd.min.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <script src='../Resource/js/perfect-scrollbar.min.js'></script>
    <script src='../Resource/js/jquery.shuffle.min.js'></script>
    <script src='../Resource/js/masonry.pkgd.min.js'></script>
    <script src='../Resource/js/owl.carousel.min.js'></script>
    <script src="../Resource/js/jquery.magnific-popup.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrDf32aQTCVENBhFJbMBKOUTiUAABtC2o"></script>
    <script src="../Resource/js/jquery.googlemap.js"></script>
    <script src="../Resource/js/validator.js"></script>
    <script src="../Resource/js/main.js"></script>
</body>
</html>
