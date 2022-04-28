<?php include_once "base.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>portifolio</title>
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- bs -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- slick -->
    <link rel="stylesheet" href="css/slick_style.css">
    <link rel="stylesheet" href="css/slick/slick-theme.css">
    <link rel="stylesheet" href="css/slick/slick.css">
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="css/slick/slick.js"></script>
    <!-- side_menu -->
    <link rel="stylesheet" href="css/side_menu.css">

</head>

<body>
    <!-- sideMenu -->
    <?php
    include "front/f_sidemenu.php";
    ?>
    <!-- sideMenu end -->

    <div class="container">
        <!-- bs carousel -->
        <div class="row-cols-1">
            <?php
            include "front/f_banner.php";
            ?>
        </div>
        <!-- bs carousel end -->

        <!-- slick -->
        <div class="row-cols-1">
            <?php
            include "front/f_slick.php";
            ?>
        </div>
        <!-- slider end -->

        <!-- por & ex-->
        <div class="row row-cols-1">
            <div class="col-lg-7">
                <?php
                include "front/f_portfolio.php";
                ?>
            </div>


            <div class="col-lg-5">
                <?php
                include "front/f_exp.php";
                ?>
            </div>
        </div>
        <!-- por & ex end -->

        <!-- footer -->
        <div class="row bg-dark text-light text-center">
            <div class="col">
                <?php
                include "front/f_footer.php";
                ?>
            </div>
        </div>
        <!-- footer end-->
    </div>



    <!-- bs -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <!-- bs end-->
    <!-- slick -->
    <script>
        $(document).on('ready', function() {
            $('.slider').slick({
                dots: true,
                infinite: false,
                speed: 300,
                slidesToShow: 5,
                slidesToScroll: 5,
                responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3,
                            infinite: true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }

                ]
            });
        })
    </script>
    <!-- slick end-->
    <!-- side_menu -->
    <script>
        $(".side-menu-group").hide()
        $(".ham-btn").click(function() {
            $(".ham-btn").toggleClass("open")
            $(".side-menu-group").slideToggle(300)
        })
    </script>
    <!-- side_menu end -->

</body>

</html>