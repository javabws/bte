<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
<title>BTX | Home</title>
  <jsp:include page="head.jsp"></jsp:include>
</head>

<body class="body-nav-fixed-menu-top">
  <div class="wrapper-body">

    <!-- NAVBAR -->
    <div id="header">
    <nav id="nav" class="navbar navbar-default navbar-fixed-top">
   <jsp:include page="menu.jsp"></jsp:include>
   </nav>
   </div>
    <!-- NAVBAR END -->

    <!-- SECTION INTRO SLIDER -->
    <!--===============================================================-->
    <div class="section-intro-index section-slider">
      <div class="layer-intro layer-intro-index">
        <!-- SLIDER -->
        <div class="wrapper-slider" id="intro-slider-wrapper">
          <div class="carousel slide carousel-intro" id="carousel-intro" data-ride="carousel" data-interval="7500">
            <div class="wrapper-preloader">
              <div id="preloader"></div>
            </div>
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-intro" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-intro" data-slide-to="1"></li>
              
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              <!-- first slide -->
              <div class="item item-theme-first active">
                <div class="container">
                  <div class="row">
                  
                  <div class="col-sm-5 hidden-xs">
                      <img class="img-responsive img-slide-3 pull-right mt-30 animation an-delay-05 an-duration-04 fadeInLeftSlider" src="assets/images/general/12.png" alt="theme-img">
                    </div>
                    <div class="col-sm-6 col-sm-offset-1">
                      <h1 class="text-theme title-xl mt-40 animation an-delay-08 an-duration-04 fadeInRightSlider"></h1>
                      <p class="text-theme lead animation an-delay-11 an-duration-04 fadeInUpSlider"></p>
                      <ul class="list-unstyled list-md text-theme">
                        <li class="animation an-delay-14 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>Not a Broker</li>
                        <li class="animation an-delay-16 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>100% Safetrade</li>
                        <li class="animation an-delay-18 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>Live Chat</li>
                        <li class="animation an-delay-18 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i> 100 Free Winning</li>
                      </ul>
                    </div>
                  
                    
                  </div>
                </div>
              </div>
              <!-- third slide -->
              <div class="item item-theme">
                <div class="container">
                  <div class="row">
                    <div class="col-sm-5 hidden-xs">
                      <img class="img-responsive img-slide-3 pull-right mt-30 animation an-delay-05 an-duration-04 fadeInLeftSlider" src="assets/images/general/imacs.png" alt="theme-img">
                    </div>
                    <div class="col-sm-6 col-sm-offset-1">
                      <h1 class="text-theme title-xl mt-40 animation an-delay-08 an-duration-04 fadeInRightSlider"></h1>
                      <p class="text-theme lead animation an-delay-11 an-duration-04 fadeInUpSlider"></p>
                      <ul class="list-unstyled list-md text-theme">
                        <li class="animation an-delay-14 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>90% Payout </li>
                        <li class="animation an-delay-16 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>Peer to Peer Trade </li>
                        <li class="animation an-delay-18 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>24 Hours Payout </li>
                        <li class="animation an-delay-18 an-duration-04 fadeInRightSlider"><i class="fa fa-check fa-round"></i>Best Affiliate Payout </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- SLIDER END-->
      </div>
      <!-- Controls -->
      <a href="#carousel-intro" role="button" data-slide="prev">
        <i class="fa fa-angle-left fa-2x btn-prev-intro"></i>
      </a>
      <a href="#carousel-intro" role="button" data-slide="next">
        <i class="fa fa-angle-right fa-2x btn-next-intro"></i>
      </a>
    </div>

    <!-- SECTION CALL-TO -->
    <!--===============================================================-->
    

    <!-- SEECTION FEATURES -->
    <!--===============================================================-->
    <div class="section section-sm section-both">
      <div class="container">
        <div class="row">
          <!-- FEATURES -->
          <div class="col-sm-3">
            <div class="icon-box">
              <i class="fa fa-bar-chart-o fa-round fa-4x text-theme"></i>
              <h3 class="title-sm text-theme-sm text-theme">Investing</h3>
              <p class="text-theme-sm">Easy to start investing!<br> (Minimum deposit just $10)</p>
            </div>
          </div>
          <!-- FEATURES -->
          <div class="col-sm-3">
            <div class="icon-box">
              <i class="fa fa-calendar fa-round fa-4x text-theme"></i>
              <h3 class="title-sm text-theme-sm text-theme">Trading</h3>
              <p class="text-theme-sm">24/7 trading on<br>Binary options</p>
            </div>
          </div>
          <!-- FEATURES -->
          <div class="col-sm-3">
            <div class="icon-box">
              <i class="fa fa-database fa-round fa-4x text-theme"></i>
              <h3 class="title-sm text-theme-sm text-theme">Profit</h3>
              <p class="text-theme-sm">Profit Fixed 90 %</p>
            </div>
          </div>
          <!-- FEATURES -->
          <div class="col-sm-3">
            <div class="icon-box">
              <i class="fa fa-graduation-cap fa-round fa-4x text-theme"></i>
              <h3 class="title-sm text-theme-sm text-theme">Education</h3>
              <p class="text-theme-sm">Interactive web-based <br>Education system</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- SECTION DARK -->
    <!--===============================================================-->
    <div class="section section-both section-sm section-dark">
      <div class="container">
        <div class="row">
          <div class="col-sm-5">
            <img class="img-responsive" src="assets/images/portfolio/Sample-62.png" alt="theme-img">
          </div>
          <div class="col-sm-6 col-sm-offset-1">
            <h3 class="text-theme title-lg">Free 100 strategies </h3>
            
            <ul class="text-theme list-unstyled list-md">
              <li><i class="fa fa-check colored"></i>Staking Up Plan For A Payout  </li>
              <li><i class="fa fa-check colored"></i>Support and Resistance Strategy</li>
              <li><i class="fa fa-check colored"></i>Follow Trend Strategy</li>
              <li><i class="fa fa-check colored"></i>volume Spread Analysis (VSA) Strategy</li>
              <li><i class="fa fa-check colored"></i>Dev Straddle Strategy</li>
              <li><i class="fa fa-check colored"></i>Breakout Strategy and much more...</li>
            </ul>
            <a href="http://binaryexchangetrade.com/?p=2289" class="text-theme btn btn-lg btn-primary">Read More...</a>
          </div>
        </div>
      </div>
    </div>
    <!-- SECTION -->
    <!--===============================================================-->
    <div class="section section-sm section-both">
      <div class="container">
        <div class="row">
          <div class="col-sm-7">
            <h3 class="text-theme title-lg">BINARY TRADE XCHANGE </h3>
            <p class="text-theme">An Ultimate Solution In Binary Option</p>
            <ul class="text-theme list-unstyled list-xl">
              <li><a href="http://binaryexchangetrade.com/?p=2299"><i class="fa fa-check fa-2x fa-round bg"></i><span>90% Payout</span></a></li>
              <li><a href="http://binaryexchangetrade.com/?p=2322"><i class="fa fa-check fa-2x fa-round bg"></i><span>48 Hours Withdrawal</span></a></li>
              <li><a href="http://binaryexchangetrade.com/?p=2317"><i class="fa fa-check fa-2x fa-round bg"></i><span>Affilate Programme</span></a></li>
              <li><a href="http://binaryexchangetrade.com/?p=2313"><i class="fa fa-check fa-2x fa-round bg"></i><span>Trading Exchange</span></a></li>
              <li><a href="http://binaryexchangetrade.com/?p=2289"><i class="fa fa-check fa-2x fa-round bg"></i><span>Free 100 Strategies</span></a></li>
              <li><a href="http://binaryexchangetrade.com/?p=2295"><i class="fa fa-check fa-2x fa-round bg"></i><span>100% Safe Trade</span></a></li>
            </ul>
          </div>
          <div class="col-sm-5">
            <img class="img-responsive pull-right" src="assets/images/general/imacs.png" alt="theme-img">
          </div>
        </div>
      </div>
    </div>
    <!-- SECTION COUNT -->
    <!--===============================================================-->
    
    <!-- SECTION WORK AND CLIENTS -->
    <!--===============================================================-->
    <div class="section section-lg section-both section-dark">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 text-center">
            <h3 class="text-theme title-xl title-section text-uppercase hr">Binary Trade Xchange</h3>
            <p class="text-theme lead lead-section">An Ultimate Solution In Binary Option</p>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-8 col-sm-offset-2">
            <div id="owl-our-work" class="owl-carousel">
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample11.png" alt="theme-img">
                </a>
              </div>
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample-21.png" alt="theme-img">
                </a>
              </div>
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample-31.png" alt="theme-img">
                </a>
              </div>
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample-41.png" alt="theme-img">
                </a>
              </div>
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample-51.png" alt="theme-img">
                </a>
              </div>
              <div class="item">
                <a href="assets/images/portfolio/lightbox.gif">
                  <img class="img-responsive" src="assets/images/portfolio/Sample-62.png" alt="theme-img">
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          
        </div>
      </div>
    </div>
    <!-- SECTION CEO -->
    <!--===============================================================-->
    <div class="section-ceo section section-sm section-top ">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-sm-push-6">
            <h3 class="text-theme title-lg">"A Full Deposit Is Not Enough"</h3>
            <p class="text-theme lead">More money under your command.</p>
            <a class="text-theme btn btn-primary btn-lg">Open Account</a>
          </div>
          <div class="col-sm-6 col-sm-pull-6">
            <div class="row">
              <div class="col-sm-6">
                <img class="wow fadeInUp img-responsive" data-wow-duration="0.6s" src="assets/images/general/register-now-logos.png" alt="theme-img">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- SECTION FOOTER -->
    
    <jsp:include page="footer.jsp"></jsp:include>
    
    
  </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="assets/js/page/page.navbar-fixed-shrinked.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="assets/js/owl.carousel.js"></script>
  <script src="assets/js/jquery.magnific-popup.js"></script>
  <script src="assets/js/jquery.waypoints.js"></script>
  <script src="assets/js/jquery.countTo.js"></script>
  <script src="assets/js/page/theme.js"></script>
  <script src="assets/js/page/page.home.js"></script>
</body>

</html>
