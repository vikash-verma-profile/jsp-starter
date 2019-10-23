<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <!-- Custom Font Icons CSS-->
        <link rel="stylesheet" href="css/landy-iconfont.css">
        <!-- Google fonts - Open Sans-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800">
        <!-- owl carousel-->
        <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
        <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="favicon.png">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <body>

        <!-- navbar-->
        <header class="header">
            <nav class="navbar navbar-expand-lg fixed-top"><a href="index.html" class="navbar-brand">Landy</a>
                <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><span></span><span></span><span></span></button>
                <div id="navbarSupportedContent" class="collapse navbar-collapse">
                    <ul class="navbar-nav ml-auto align-items-start align-items-lg-center">
                        <li class="nav-item"><a href="#about-us" class="nav-link link-scroll">About Us</a></li>
                        <li class="nav-item"><a href="#features" class="nav-link link-scroll">Features</a></li>
                        <li class="nav-item"><a href="#testimonials" class="nav-link link-scroll">Testimonials</a></li>
                        <li class="nav-item"><a href="MyProfile" class="nav-link">My Profile</a></li>
                    </ul>
                    <div class="navbar-text">   
                        <!-- Button trigger modal--><a href="#" data-toggle="modal" data-target="#exampleModal" class="btn btn-primary navbar-btn btn-shadow btn-gradient">Logout</a>
                    </div>

                </div>
            </nav>
        </header>
        <!-- Modal-->



        <section class="newsletter bg-gray">
            <div class="container text-center">
                <h2>Welcome <%
        out.print(request.getAttribute("Name"));
        
       %></h2>
                <p class="lead">You can edit your details given below</p>
                <div class="form-holder">
                    <form>
                        <div class="form-group">
                            <label>Email Id</label>
                            <label> </label>
                            <input type="email" class="form-control" value='<%
        out.print(request.getAttribute("Emailid"));
        
       %>' name="email" id="email" placeholder="Enter Your Email Address">
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value='<%
        out.print(request.getAttribute("Name"));
        
       %>' id="email" placeholder="Enter Your Name">
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <div id="scrollTop">
            <div class="d-flex align-items-center justify-content-end"><i class="fa fa-long-arrow-up"></i>To Top</div>
        </div>
        <footer class="main-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6"><a href="#" class="brand">Landy</a>
                        <ul class="contact-info list-unstyled">
                            <li><a href="mailto:sales@landy.com">Sales@Landy.com</a></li>
                            <li><a href="tel:123456789">+00 123 456 789</a></li>
                        </ul>
                        <ul class="social-icons list-inline">
                            <li class="list-inline-item"><a href="#" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="Instagram"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5>Selected Cases</h5>
                        <ul class="links list-unstyled">
                            <li> <a href="#">Guess Conntect</a></li>
                            <li> <a href="#">Postly</a></li>
                            <li> <a href="#">Iris Vor Arnim</a></li>
                            <li> <a href="#">Yapital</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5>Selected Cases</h5>
                        <ul class="links list-unstyled">
                            <li> <a href="#">Guess Conntect</a></li>
                            <li> <a href="#">Postly</a></li>
                            <li> <a href="#">Iris Vor Arnim</a></li>
                            <li> <a href="#">Yapital</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5>Selected Cases</h5>
                        <ul class="links list-unstyled">
                            <li> <a href="#">Guess Conntect</a></li>
                            <li> <a href="#">Postly</a></li>
                            <li> <a href="#">Iris Vor Arnim</a></li>
                            <li> <a href="#">Yapital</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="copyrights">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <p>&copy; 2017 Landy.com. All rights reserved.                        </p>
                        </div>
                        <div class="col-md-5 text-right">
                            <p>Template By <a href="https://bootstrapious.com/" class="external">Bootstrapious</a>  </p>
                            <!-- Please do not remove the backlink to Bootstrapious unless you support us at http://bootstrapious.com/donate. It is part of the license conditions. Thanks for understanding :) -->
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Javascript files-->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
        <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="js/front.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
        <!---->
        <script>
            (function (b, o, i, l, e, r) {
                b.GoogleAnalyticsObject = l;
                b[l] || (b[l] =
                        function () {
                            (b[l].q = b[l].q || []).push(arguments)
                        });
                b[l].l = +new Date;
                e = o.createElement(i);
                r = o.getElementsByTagName(i)[0];
                e.src = '//www.google-analytics.com/analytics.js';
                r.parentNode.insertBefore(e, r)
            }(window, document, 'script', 'ga'));
            ga('create', 'UA-XXXXX-X');
            ga('send', 'pageview');
        </script>
    </body>
</html>