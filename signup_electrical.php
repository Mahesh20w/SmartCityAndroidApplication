<?php
error_reporting(0);
session_start();
?>
<?php
include('dbconnect.php');

if (isset($_POST['Register'])) {

    $v1 = $_POST["f1"];
    $v2 = $_POST["f2"];
    $v3 = $_POST["f3"];
    $v4 = $_POST["f4"];
    $v5 = $_POST["f5"];
    $v6 = $_POST["f6"];
    $v7 = $_POST["f7"];
    
    
   
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }


       
       
            $sql = "INSERT INTO smart_city_electrical_login VALUES ('$v1','$v2','$v3','$v4','$v5','$v6','$v7')";



            if (mysqli_query($conn, $sql)) {
                echo "<script>alert('Signup successfully');</script>";
                header("Location:index.php");
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
        
  /*  }
    else
    {
        echo "<script>alert('Please enter correct OTP');</script>";
    }*/
}
?>
<html>
    <head>
        <title>New Account</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <!----<link href="formvalid.css" rel="stylesheet">
        <script src="formvalid.js"></script>----->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });


            function getOneTimePass() {

                //Code for getting Div id to set product dropdown
                var mobile_no = document.getElementById("phone").value;
                $.ajax({
                    type: 'post',
                    url: 'get_one_pass.php',
                    data: {
                        mobile_no: mobile_no
                    },
                    success: function (data) {
                        console.log(data);
                        var json_obj = JSON.parse(data);
                        document.getElementById('session').value = json_obj.Details;
                    }
                });
            }
        </script>

        <!-- start-smoth-scrolling -->
    </head>

    <body>
        <!-- header -->

<?php //include('header_part.php'); ?>
        <!-- //header -->
        <!-- products-breadcrumb -->
        <div class="products-breadcrumb">
            <div class="container">
                <ul>
                  
                    <li>Sign Up Page</li>
                </ul>
            </div>
        </div>
        <!-- //products-breadcrumb -->
        <!-- banner -->
        <div class="banner">
<?php //include('navigation_bar.php');   ?>
            <div class="">
                <!-- login -->

                <div class="w3_login">
                    <h3>Create New Account</h3>
                    <div class="w3_login_module">
                        <div class="module form-module">
                           <!--- <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                                <div class="tooltip">Click Me</div>
                            </div>--->
                            <!---<div class="form">
                                <h2>Login to your account</h2>
                                <form action="#" method="post" name="form1">
                                    <input class="form-control" type="text" name="Username" placeholder="Username" required=" ">
                                    <input class="form-control" type="password" name="Password" placeholder="Password" required=" ">

                                    <input type="hidden" name="redirurl" value="<?php echo $_SERVER['HTTP_REFERER']; ?>"   />
                                    <input type="submit" name="Login" value="Login">
                                </form>
                            </div>---->
                            <a href="Electrical_login.php" style="float:right;text-decoration:underline;"></a>
                            <div class="form">
                                <h2>Create an account</h2>
                                <form action="#" method="post">
								    
                                    <input class="form-control" type="text" name="f1"  placeholder="Enter Id" required=" ">
                                    <input class="form-control" type="text" name="f2"  placeholder="Enter Name" required=" ">
                    
									<input class="form-control" type="text" name="f3" pattern="(7|8|9)\d{9}" maxlength="10" placeholder="Enter 10 digit valid mobile no." required=" ">
					
					
					
                                    <input class="form-control" type="email" name="f4"  placeholder="Enter Email Address" required=" ">
					
					
                                    <input class="form-control" type="text"  name="f5"  placeholder="Enter City Name" required=" ">
									
									 
									
                                    
									<input class="form-control" type="text" name="f6"  placeholder="Enter Designation" required=" ">
									
                                    <input class="form-control" type="text" name="f7" pattern="[a-zA-Z]{6,20}$" placeholder="Password(6-20 characters)" required=" ">

                                    <!---<input type="button" id="getotp" value="GET OTP" class="btn btn-primary" onclick="getOneTimePass()">
                                    <input class="form-control" id="session" type="hidden" name="session">  <br/>
                                    <br/> <input class="form-control" type="text" name="otp" pattern="[0-9]{6}$" placeholder="One Time Password" required=" ">--->

                                    <input type="submit" name="Register" value="Register">
                                </form>
                            </div>


                            <!--- <div class="cta"><a href="forget.php">Forgot your password?</a>---->

                            </div>
                        </div>
                    </div>
                    <script>
                        $('.toggle').click(function () {
                            // Switches the Icon
                            $(this).children('i').toggleClass('fa-pencil');
                            // Switches the forms  
                            $('.form').animate({
                                height: "toggle",
                                'padding-top': 'toggle',
                                'padding-bottom': 'toggle',
                                opacity: "toggle"
                            }, "slow");
                        });
                    </script>
                </div>
                <!-- //login -->
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //banner -->
        <!-- newsletter-top-serv-btm -->
       <!--- <div class="newsletter-top-serv-btm">
            <div class="container">
                <div class="col-md-4 wthree_news_top_serv_btm_grid">
                    <div class="wthree_news_top_serv_btm_grid_icon">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    </div>
                    <h3>Nam libero tempore</h3>
                    <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
                        saepe eveniet ut et voluptates repudiandae sint et.</p>
                </div>
                <div class="col-md-4 wthree_news_top_serv_btm_grid">
                    <div class="wthree_news_top_serv_btm_grid_icon">
                        <i class="fa fa-bar-chart" aria-hidden="true"></i>
                    </div>
                    <h3>officiis debitis aut rerum</h3>
                    <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
                        saepe eveniet ut et voluptates repudiandae sint et.</p>
                </div>
                <div class="col-md-4 wthree_news_top_serv_btm_grid">
                    <div class="wthree_news_top_serv_btm_grid_icon">
                        <i class="fa fa-truck" aria-hidden="true"></i>
                    </div>
                    <h3>eveniet ut et voluptates</h3>
                    <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
                        saepe eveniet ut et voluptates repudiandae sint et.</p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>--->
        <!-- //newsletter-top-serv-btm -->
        <!-- newsletter -->
       <!-- <div class="newsletter">
            <div class="container">
                <div class="w3agile_newsletter_left">
                    <h3>sign up for our newsletter</h3>
                </div>
                <div class="w3agile_newsletter_right">
                    <form action="#" method="post">
                        <input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = 'Email';}" required="">
                        <input type="submit" value="subscribe now">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>--->
        <!-- //newsletter -->
        <!-- footer -->
<?php //include('footer.php'); ?>
        <!-- //footer -->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script>
                                                    $(document).ready(function () {
                                                        $(".dropdown").hover(
                                                                function () {
                                                                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                                                                    $(this).toggleClass('open');
                                                                },
                                                                function () {
                                                                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                                                                    $(this).toggleClass('open');
                                                                }
                                                        );
                                                    });
        </script>
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //here ends scrolling icon -->
        <script src="js/minicart.min.js"></script>
        <script>
                    // Mini Cart
                    paypal.minicart.render({
                        action: '#'
                    });

                    if (~window.location.search.indexOf('reset=true')) {
                        paypal.minicart.reset();
                    }
        </script>
    </body>
</html>