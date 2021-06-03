<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proje.Web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <title>Kıvanç Özgür</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="BreezyCV - Resume / CV / vCard Template" />
    <meta name="keywords" content="vcard, resposnive, retina, resume, jquery, css3, bootstrap, Material CV, portfolio" />
    <meta name="author" content="lmpixels" />
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="Resource/css/reset.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/bootstrap-grid.min.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/animations.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/perfect-scrollbar.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="Resource/css/main.css" type="text/css">

    <script src="Resource/js/modernizr.custom.js"></script>
</head>

<body>
    <form id="form1" runat="server"></form>
   <!-- Animated Background -->
    <div class="lm-animated-bg" style="background-image: url(Resource/img/main_bg.png);"></div>
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
                <img src="Resource/img/main_photo.jpg" alt="Kıvanç Özgür">
              </div>
              <div class="header-titles">
                  <h2> <asp:Label Text="" ID="Adsoyad" runat="server" /> </h2>
                <h4><asp:Label Text="" ID="Sektor" runat="server" /></h4>
              </div>
            </div>

            <ul class="main-menu">
              <li class="active">
                <a href="#home" class="nav-anim">
                  <span class="menu-icon lnr lnr-home"></span>
                  <span class="link-text">Anasayfa</span>
                </a>
              </li>
              <li>
                <a href="#about-me" class="nav-anim">
                  <span class="menu-icon lnr lnr-user"></span>
                  <span class="link-text">Hakkımda</span>
                </a>
              </li>
              <li>
                <a href="#resume" class="nav-anim">
                  <span class="menu-icon lnr lnr-graduation-hat"></span>
                  <span class="link-text">Özgeçmiş</span>
                </a>
              </li>
              <%--<li>
                <a href="#portfolio" class="nav-anim">
                  <span class="menu-icon lnr lnr-briefcase"></span>
                  <span class="link-text">Portfolyo</span>
                </a>
              </li>--%>
              <li>
                <a href="#blog" class="nav-anim">
                  <span class="menu-icon lnr lnr-book"></span>
                  <span class="link-text">Blog</span>
                </a>
              </li>
              <li>
                <a href="#contact" class="nav-anim">
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

          <!-- Arrows Nav -->
          <div class="lmpixels-arrows-nav">
            <div class="lmpixels-arrow-right"><i class="lnr lnr-chevron-right"></i></div>
            <div class="lmpixels-arrow-left"><i class="lnr lnr-chevron-left"></i></div>
          </div>
          <!-- End Arrows Nav -->

          <div class="content-area">
            <div class="animated-sections">
              <!-- Home Subpage -->
              <section data-id="home" class="animated-section start-page">
                <div class="section-content vcentered">

                    <div class="row">
                      <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="title-block">
                          <h2> <asp:Label Text="" ID="AdSoyadContent" runat="server" /></h2>
                          <div class="owl-carousel text-rotation">                                    
                            <div class="item">
                              <div class="sp-subtitle"><asp:Label Text="" ID="SektorContent" runat="server" /></div>
                            </div>
                            
                            <div class="item">
                              <div class="sp-subtitle">Ön Yüz Geliştiricisi</div>
                            </div>

                            <div class="item">
                              <div class="sp-subtitle">Web Tasarımcısı</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                </div>
              </section>
              <!-- End of Home Subpage -->

              <!-- About Me Subpage -->
              <section data-id="about-me" class="animated-section">
                <div class="page-title">
                  <h2>Ben <span>Kimim ?</span></h2>
                </div>

                <div class="section-content">
                  <!-- Personal Information -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-7">
                      <p>14 Ekim 1998 Bursa doğumluyum. Kendimi mobil uygulama ve web sitesi alanlarında geliştirdim. Şu an Textoni şirketinde CTO olarak çalışmaktayım.</p>
                    </div>

                    <div class="col-xs-12 col-sm-5">
                      <div class="info-list">
                        <ul>
                          <li>
                            <span class="title">Yaş</span>
                            <span class="value">23</span>
                          </li>

                          <li>
                            <span class="title">Vatandaşlık</span>
                            <span class="value">Türkiye / Bulgaristan</span>
                          </li>

                          <li>
                            <span class="title">E-mail</span>
                            <span class="value">webkivanc@gmail.com</span>
                          </li>

                        </ul>
                      </div>
                    </div>
                  </div>
                  <!-- End of Personal Information -->

                  <div class="white-space-50"></div>

                  <!-- Services -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>Neler <span>Yapıyorum</span></h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-6">
                      <div class="col-inner">
                        <div class="info-list-w-icon">
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-store"></i>
                            </div>
                            <div class="ci-text">
                              <h4>Mobil Uygulama</h4>
                              <p>Müşterilerin isteği üzerine firmalarına özel veya yeni fikirlerini mobil uygulamaya dönüştürüyorum. Bunu yaparken Flutter dilini kullanıyorum. Bu sayede hem Android hem de iOS uygulamaları geliştiriyorum.</p>
                            </div>
                          </div> 
                            <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-pencil"></i>
                            </div>
                            <div class="ci-text">
                              <h4>Logo Tasarımı</h4>
                              <p>Kurumlara özel olarak logo tasarım işiyle uğraşıyorum bunun için Adobe Photoshop CC kullanıyorum.</p>
                            </div>
                          </div>
                        
                        </div>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-6">
                      <div class="col-inner">
                        <div class="info-list-w-icon">
                           <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-laptop-phone"></i>
                            </div><div class="ci-text">
                              <h4>Web Sitesi</h4>
                              <p>Günümüzün olmazsa olmazlarından biri olan web sitesi tasarımı yapıyorum. Bu siteleri yaparken tamamen müşterinin isteğine bağlı Wordpress , HTML5 ve CSS3 üzerinden gidiyorum.</p>
                            </div>
                          </div>
                          <div class="info-block-w-icon">
                            <div class="ci-icon">
                              <i class="lnr lnr-flag"></i>
                            </div><div class="ci-text">
                              <h4>Proje Yöneticiliği</h4>
                              <p>Halihazırdaki işim olan proje yöneticiliği konusunda kendimi geliştiriyorum. Gelen işler için bir ekip oluşturup bu ekibin neler yapması gerektiğini planlayarak projeyi tamamlıyorum.</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- End of Services -->

                  <div class="white-space-30"></div>

                  <!-- Testimonials -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>Referanslar</h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="testimonials owl-carousel">
                        <!-- Testimonial 1 -->
                        <div class="testimonial">
                          <div class="img">
                            <img src="Resource/img/testimonials/testimonial-1.jpg" alt="Kıvanç Özgür">
                          </div>
                          <div class="text">
                            <p>Kıvançla yaklaşık 10 aydır çalışıyorum ve ondan çok memnunum. Birçok projeyi birlikte tamamladık.</p>
                          </div>

                          <div class="author-info">
                            <h4 class="author">Tufan Kızılırmak</h4>
                            <h5 class="company">Textoni Co-Founder</h5>
                            <div class="icon">
                              <i class="fas fa-quote-right"></i>
                            </div>
                          </div>
                        </div>
                        <!-- End of Testimonial 1 -->

                        <!-- Testimonial 2 -->
                        <div class="testimonial">
                          <div class="img">
                            <img src="Resource/img/testimonials/testimonial-2.jpg" alt="Kıvanç Özgür">
                          </div>
                          <div class="text">
                            <p>Bizim kurumumuzda staj yaptığı zaman ona verdiğimiz işleri fazlasıyla yerine getirdi ondan çok memnun kalmıştım.</p>
                          </div>

                          <div class="author-info">
                            <h4 class="author">Ferhat Doğru</h4>
                            <h5 class="company">Doğru Yazılım LTD. ŞTİ. Co-Founder</h5>
                            <div class="icon">
                              <i class="fas fa-quote-right"></i>
                            </div>
                          </div>
                        </div>
                        <!-- End of Testimonial 2 -->

                        <!-- Testimonial 3 -->
                        <div class="testimonial">
                          <div class="img">
                            <img src="Resource/img/testimonials/testimonial-3.jpg" alt="Kıvanç Özgür">
                          </div>
                          <div class="text">
                            <p>Vivamus at molestie dui, eu ornare orci. Curabitur vel egestas dolor. Nulla condimentum nunc sit amet urna tempus finibus. Duis mollis leo id ligula pellentesque, at vehicula dui ultrices.</p>
                          </div>

                          <div class="author-info">
                            <h4 class="author">Kristin Carroll</h4>
                            <h5 class="company">Helping Hand</h5>
                            <div class="icon">
                              <i class="fas fa-quote-right"></i>
                            </div>
                          </div>
                        </div>
                        <!-- End of Testimonial 3 -->
                      </div>
                    </div>
                  </div>
                  <!-- End of Testimonials -->

                  <div class="white-space-50"></div>

                  <!-- Clients -->
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="block-title">
                        <h3>Müşteriler</h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="clients owl-carousel">
                        
                        <div class="client-block">
                          <a href="#" target="_blank" title="textoni">
                            <img src="Resource/img/clients/textoni.png" alt="textoni">
                          </a>
                        </div>

                        <div class="client-block">
                          <a href="#" target="_blank" title="Edebiyat">
                            <img src="Resource/img/clients/Edebiyat.png" alt="Edebiyat">
                          </a>
                        </div>

                        <div class="client-block">
                          <a href="#" target="_blank" title="tipakademisi">
                            <img src="Resource/img/clients/tipakademisi.png" alt="tipakademisi">
                          </a>
                        </div>

                        <div class="client-block">
                          <a href="#" target="_blank" title="proaktifhukuk">
                            <img src="Resource/img/clients/proaktifhukuk.png" alt="proaktifhukuk">
                          </a>
                        </div>

                        <div class="client-block">
                          <a href="#" target="_blank" title="cepders">
                            <img src="Resource/img/clients/cepders.png" alt="cepders">
                          </a>
                        </div>  
                      </div>
                    </div>
                  </div>
                  <!-- End of Clients -->

                  <div class="white-space-50"></div>

                  <!-- Fun Facts -->
                  <%--<div class="row">
                    <div class="col-xs-12 col-sm-12">

                      <div class="block-title">
                        <h3>Fun <span>Facts</span></h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-xs-12 col-sm-4">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-heart"></i>
                        <h4>Happy Clients</h4>
                        <span class="fun-fact-block-value">578</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-clock"></i>
                        <h4>Working Hours</h4>
                        <span class="fun-fact-block-value">4,780</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 ">
                      <div class="fun-fact gray-default">
                        <i class="lnr lnr-star"></i>
                        <h4>Awards Won</h4>
                        <span class="fun-fact-block-value">15</span>
                        <span class="fun-fact-block-text"></span>
                      </div>
                    </div>
                  </div>--%>
                  <!-- End of Fun Facts -->

                </div>
              </section>
              <!-- End of About Me Subpage -->

              <!-- Resume Subpage -->
              <section data-id="resume" class="animated-section">
                <div class="page-title">
                  <h2>Özgeçmiş</h2>
                </div>

                <div class="section-content">

                  <div class="row">
                    <div class="col-xs-12 col-sm-7">

                      <div class="block-title">
                        <h3>Eğitim</h3>
                      </div>
                      
                      <div class="timeline timeline-second-style clearfix">
                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">2020</h5>
                            <span class="item-company">Anadolu Üniversitesi</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">Web Tasarım ve Kodlama</h4>
                            <p>Web tasarımı ve kodlama alanlarında ihtiyaç duyulan nitelikli insan kaynağını yetiştirmektir. Ayrıca, Web tasarımı ve kodlama alanlarında halen çalışmakta olan personelin etkinlik ve verimliliklerini artıracak şekilde bilgi ve becerilerle donatılmalarını sağlamak da amaçlanmaktadır.</p>
                          </div>
                        </div>

                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">2021*</h5>
                            <span class="item-company">Muğla Sıtkı Koçman Üniversitesi</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">Bilişim Sitemleri Mühendisliği</h4>
                            <p>Bilişim Sistemleri Mühendisliği, işverenlerinin bilgisayar donanımı, yazılımı ve ağ araçları ihtiyaçlarını karşılamaya yardımcı olan, bilgisayar donanım ve yazılımlarını geliştirmek, test etmek, yüklemek, yapılandırmak ve sorunlarını gidermek için çalışmalar gerçekleştiren multidisipliner bir çalışma alanıdır.</p>
                          </div>
                        </div>
                      </div>

                      <div class="white-space-50"></div>

                      <div class="block-title">
                        <h3>İş Deneyimlerim</h3>
                      </div>

                      <div class="timeline timeline-second-style clearfix">
                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">2020 - Günümüz</h5>
                            <span class="item-company">Textoni</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">Front End Geliştirici</h4>
                                  </div>
                        </div>

                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">2020 - Günümüz</h5>
                            <span class="item-company">Dotworkmedia</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">Mobil Uygulama Geliştirici / CTO</h4>
                           </div>
                        </div>
                        
                        <div class="timeline-item clearfix">
                          <div class="left-part">
                            <h5 class="item-period">2018 - 2019</h5>
                            <span class="item-company">Bemar Kariyer Okulu</span>
                          </div>
                          <div class="divider"></div>
                          <div class="right-part">
                            <h4 class="item-title">Yazılım ve Veritabanı Eğitmeni</h4>
                         </div>
                        </div>
                      </div>

                    </div>

                    <!-- Skills & Certificates -->
                    <div class="col-xs-12 col-sm-5">
                      <!-- Design Skills -->
                      <div class="block-title">
                        <h3>Çalıştığım <span>Alanlar</span></h3>
                      </div>

                      <div class="skills-info skills-second-style">
                        <!-- Skill 1 -->
                        <div class="skill clearfix">
                          <h4>Web Tasarım</h4>
                          <div class="skill-value">95%</div>
                        </div>
                        <div class="skill-container skill-1">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 1 -->
                        
                        <!-- Skill 2 -->
                        <div class="skill clearfix">
                          <h4>Veritabanı</h4>
                          <div class="skill-value">65%</div>
                        </div>
                        <div class="skill-container skill-2">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 2 -->
                        
                        <!-- Skill 3 -->
                        <div class="skill clearfix">
                          <h4>Mobil Uygulama</h4>
                          <div class="skill-value">80%</div>
                        </div>
                        <div class="skill-container skill-3">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 3 -->
                        
                        <!-- Skill 4 -->
                        <div class="skill clearfix">
                          <h4>Grafik Tasarım</h4>
                          <div class="skill-value">90%</div>
                        </div>
                        <div class="skill-container skill-4">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 4 -->

                      </div>
                      <!-- End of Design Skills -->

                      <div class="white-space-10"></div>

                      <!-- Coding Skills -->
                      <div class="block-title">
                        <h3>Yazılım<span> Dillerim</span></h3>
                      </div>

                      <div class="skills-info skills-second-style">
                        <!-- Skill 5 -->
                        <div class="skill clearfix">
                          <h4>Dart/Flutter</h4>
                          <div class="skill-value">95%</div>
                        </div>
                        <div class="skill-container skill-5">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 5 -->

                        <!-- Skill 6 -->
                        <div class="skill clearfix">
                          <h4>C#</h4>
                          <div class="skill-value">85%</div>
                        </div>
                        <div class="skill-container skill-6">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 6 -->
                        
                        <!-- Skill 7 -->
                        <div class="skill clearfix">
                          <h4>HTML/CSS/Bootstrap</h4>
                          <div class="skill-value">100%</div>
                        </div>
                        <div class="skill-container skill-7">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 7 -->
                        
                        <!-- Skill 8 -->
                        <div class="skill clearfix">
                          <h4>Javascript/jquery</h4>
                          <div class="skill-value">75%</div>
                        </div>
                        <div class="skill-container skill-8">
                          <div class="skill-percentage"></div>
                        </div>
                        <!-- End of Skill 8 -->
                      </div>
                      <!-- End of Coding Skills -->

                      <div class="white-space-10"></div>

                      <!-- Knowledges -->
                      <div class="block-title">
                        <h3>Hobilerim</h3>
                      </div>

                      <ul class="knowledges">
                        <li>Kamp Yapmak</li>
                        <li>Gezmek</li>
                        <li>Yeni diller keşfetmek</li>
                      </ul>
                      <!-- End of Knowledges -->
                    </div>
                    <!-- End of Skills & Certificates -->
                  </div>

                  <div class="white-space-50"></div>

                  
                </div>
              </section>
              <!-- End of Resume Subpage -->

              <!-- Blog Subpage -->
              <section data-id="blog" class="animated-section">
                <div class="page-title">
                  <h2>Blog</h2>
                </div>

                <div class="section-content">
                  <div class="row">
                    <div class="col-xs-12 col-sm-12">
                      <div class="blog-masonry two-columns clearfix">
                        
                        <!-- Blog Post 1 -->
                        <div class="item post-1">
                          <div class="blog-card">
                            <div class="media-block">
                              <div class="category">
                                <a href="#"><asp:Label runat="server" ID="Konu"></asp:Label> </a>
                              </div>
                              <a href="Blog/BlogPost.aspx">
                                <img src="Resource/img/blog/blog_post_1.jpg" class="size-blog-masonry-image-two-c" alt="Why I Switched to Sketch For UI Design" title="" />
                                <div class="mask"></div>
                              </a>
                            </div>
                            <div class="post-info">
                              <div class="post-date"><asp:Label runat="server" ID="Tarih"></asp:Label></div>
                              <a href="Blog/BlogPost.aspx">
                                <h4 class="blog-item-title"><asp:Label runat="server" ID="Baslik"></asp:Label></h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <!-- End of Blog Post 1 -->

                        <!-- Blog Post 2 -->
                        <div class="item post-2">
                           <div class="blog-card">
                            <div class="media-block">
                              <div class="category">
                                <a href="#"><asp:Label runat="server" ID="Konu2"></asp:Label> </a>
                              </div>
                              <a href="Blog/BlogPost.aspx">
                                <img src="Resource/img/blog/blog_post_1.jpg" class="size-blog-masonry-image-two-c" alt="Why I Switched to Sketch For UI Design" title="" />
                                <div class="mask"></div>
                              </a>
                            </div>
                            <div class="post-info">
                              <div class="post-date"><asp:Label runat="server" ID="Tarih2"></asp:Label></div>
                              <a href="Blog/BlogPost.aspx">
                                <h4 class="blog-item-title"><asp:Label runat="server" ID="Baslik2"></asp:Label></h4>
                              </a>
                            </div>
                          </div>
                        </div>
                        <!-- End of Blog Post 2 -->

                      </div>
                    </div>
                  </div>
                </div>


              </section>
              <!-- End of Blog Subpage -->

              <!-- Contact Subpage -->
              <section data-id="contact" class="animated-section">
                <div class="page-title">
                  <h2>İletişim</h2>
                </div>

                <div class="section-content">

                  <div class="row">
                    <!-- Contact Info -->
                    <div class="col-xs-12 col-sm-4">
                      <div class="lm-info-block gray-default">
                        <i class="lnr lnr-map-marker"></i>
                        <h4>Bursa</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>

                      <div class="lm-info-block gray-default">
                        <i class="lnr lnr-phone-handset"></i>
                        <h4>+90 534 607 78 72</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>

                      <div class="lm-info-block gray-default">
                        <i class="lnr lnr-envelope"></i>
                        <h4>webkivanc@gmail.com</h4>
                        <span class="lm-info-block-value"></span>
                        <span class="lm-info-block-text"></span>
                      </div>
                    </div>
                    <!-- End of Contact Info -->

                    <!-- Contact Form -->
                    <div class="col-xs-12 col-sm-8"> 
                        <div class="block-title">
                        <h3>Benimle <span>İletişime Geç</span></h3>
                      </div>
                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3045.9814451071366!2d28.981422915308197!3d40.23171477938704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14ca144697c12ef3%3A0x3d89f8aa2155a647!2zQnVyc2EsIEJhxJ9sYXJiYcWfxLEsIDE2MTYwIE9zbWFuZ2F6aS9CdXJzYQ!5e0!3m2!1str!2str!4v1622719140591!5m2!1str!2str" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                     

                    </div>
                    <!-- End of Contact Form -->
                  </div>

                </div>
              </section>
              <!-- End of Contact Subpage -->
            </div>
          </div>

      </div>
    </div>

    <script src="Resource/js/jquery-2.1.3.min.js"></script>
    <script src="Resource/js/modernizr.custom.js"></script>
    <script src="Resource/js/animating.js"></script>

    <script src="Resource/js/imagesloaded.pkgd.min.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <script src='Resource/js/perfect-scrollbar.min.js'></script>
    <script src='Resource/js/jquery.shuffle.min.js'></script>
    <script src='Resource/js/masonry.pkgd.min.js'></script>
    <script src='Resource/js/owl.carousel.min.js'></script>
    <script src="Resource/js/jquery.magnific-popup.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrDf32aQTCVENBhFJbMBKOUTiUAABtC2o"></script>
    <script src="Resource/js/jquery.googlemap.js"></script>
    <script src="Resource/js/validator.js"></script>
    <script src="Resource/js/main.js"></script>
</body>
</html>
