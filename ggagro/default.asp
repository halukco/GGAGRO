<!-- #include file = "style.asp" -->
<!-- #include file = "guvenlik.asp" -->
<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="windows-1254">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="wpOceans">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <title>Green Ground</title>
    <link href="css/themify-icons.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/flaticon.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <link href="css/slick.css" rel="stylesheet">
    <link href="css/slick-theme.css" rel="stylesheet">
    <link href="css/swiper.min.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/jquery.fancybox.css" rel="stylesheet">
    <link href="css/odometer-theme-default.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

    <!-- start page-wrapper -->
    <div class="page-wrapper">
        <!-- start preloader -->
        <div class="preloader">
            <div class="vertical-centered-box">
                <div class="content">
                    <div class="loader-circle"></div>
                    <div class="loader-line-mask">
                        <div class="loader-line"></div>
                    </div>
                    <img src="images/favicon.png" alt="">
                </div>
            </div>
        </div>
        <header id="header">
            <div class="wpo-site-header wpo-site-header-s2">
                <nav class="navigation navbar navbar-expand-lg navbar-light">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-3 col-3 d-lg-none dl-block">
                                <div class="mobail-menu">
                                    <button type="button" class="navbar-toggler open-btn">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar first-angle"></span>
                                        <span class="icon-bar middle-angle"></span>
                                        <span class="icon-bar last-angle"></span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-5">
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="./"><img 
                                            alt=""></a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-1 col-1">
                                <div id="navbar" class="collapse navbar-collapse navigation-holder">
                                    <button class="menu-close"><i class="ti-close"></i></button>
                                    <ul class="nav navbar-nav mb-2 mb-lg-0">
                                        <li class="menu-item-has-children black">
                                            <a class="active" href="./">Anasayfa</a>
                                        </li>
                                        <li class="black">
                                            <a href="./?sayfa=hakkimizda">Hakk�m�zda</a>
                                        </li>
                                        <%
                                        set urunler = kayitSeti ("SELECT * FROM menuler where mode like '2'")
                                        while not urunler.eof
                                        %>
                                        <li class="black">
                                            <a href="./?sayfa=urunler&id=<%=urunler("id")%>"><%=urunler("menu_adi")%></a>
                                        </li>
                                        <%
                                        urunler.movenext
                                        wEnd
                                        %>
                                        <li class="black"><a href="./?sayfa=iletisim">�leti�im</a></li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>

         <!-- #include file = "actions.asp" -->

        <footer class="wpo-site-footer">
            <div class="wpo-upper-footer">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget about-widget">
                                <div class="logo widget-title">
                                    <img src="images/logobeyaz.png" alt="blog">
                                </div>
                                <p>Kocabaylar in�aat nakl. ve serac�l�k limited �irketi, 
                                    2002 y�l�nda rahmetli Mehmet Kocabay �nderli�inde Denizli'de kurulmu�tur.</p>
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget link-widget">
                                <div class="widget-title">
                                    <h3>Kurumsal</h3>
                                </div>
                                <ul>
                                    <li><a href="./?sayfa=hakkimizda">Hakk�m�zda</a></li>
                                    <li><a href="./?sayfa=iletisim">�leti�im</a></li>
                                </ul>                
                            </div>
                        </div>
                        <div class="col col-lg-3 col-md-6 col-sm-12 col-12">
                            <div class="widget wpo-contact-widget">
                                <div class="widget-title">
                                    <h3>�leti�im</h3>
                                </div>
                                <div class="contact-ft">
                                    <ul>
                                        <li><i class="fi flaticon-placeholder"></i>K�n�kl� Mahallesi �aml�k Caddesi �amkent Konutlar� 2640/3 No.16</li>
                                        <li><i class="fi flaticon-phone-call"></i>0 532 621 89 62</li>
                                        <li><i class="fi flaticon-email"></i>info@ggagro.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- end container -->
            </div>
            <div class="wpo-lower-footer">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-12  col-12">
                            <p class="link"><a href="https://webkent.com.tr/"> <span>Web Tasar�m & Yaz�l�m Webkent Yaz�l�m</span></a> 
                                
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- end of page-wrapper -->

    <!-- All JavaScript files
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Plugins for this template -->
    <script src="js/modernizr.custom.js"></script>
    <script src="js/jquery.dlmenu.js"></script>
    <script src="js/jquery-plugin-collection.js"></script>
    <!-- Custom script for this template -->
    <script src="js/script.js"></script>
</body>

</html>