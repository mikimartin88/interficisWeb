<%@page import="AccesoBD.DBLoginActions"%>
<%@page import="AccesoBD.DBConnection"%>
<%@page import="AccesoBD.DBTest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Interficies Web</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="images/icons/favicon.ico">
        <link rel="apple-touch-icon" href="images/icons/favicon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
        <!--Loading bootstrap css-->
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
        <link type="text/css" rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.min.css">
        <link type="text/css" rel="stylesheet" href="styles/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="styles/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="styles/animate.css">
        <link type="text/css" rel="stylesheet" href="styles/all.css">
        <link type="text/css" rel="stylesheet" href="styles/main.css">
        <link type="text/css" rel="stylesheet" href="styles/style-responsive.css">
        <link type="text/css" rel="stylesheet" href="styles/zabuto_calendar.min.css">
        <link type="text/css" rel="stylesheet" href="styles/pace.css">
        <link type="text/css" rel="stylesheet" href="styles/jquery.news-ticker.css">

    </head>
    <body>
        <div>
            <!--BEGIN THEME SETTING-->
            <div id="theme-setting">

                <div class="content-theme-setting">
                    <select id="list-style" class="form-control">
                        <option value="style1">Flat Squared style</option>
                        <option value="style2">Flat Rounded style</option>
                        <option value="style3" selected="selected">Flat Border style</option>
                    </select>
                </div>
            </div>
            <!--END THEME SETTING-->
            <!--BEGIN BACK TO TOP-->
            <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
            <!--END BACK TO TOP-->
            <!--BEGIN TOPBAR-->
            <div id="header-topbar-option-demo" class="page-header-topbar">
                <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
                    <div class="navbar-header">
                        <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                        <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span class="logo-text">MERCA-TIC</span><span style="display: none" class="logo-text-icon">µ</span></a></div>
                    <div class="topbar-main"><a id="menu-toggle" href="#" class="hidden-xs"><i class="fa fa-bars"></i></a>

                        <form class="navbar-form navbar-right" role="search" method ="POST" action="<%DBLoginActions.isIn(request.getParameter("username"), request.getParameter("password"));%>">
                            <div class="form-group">
                                <input class="form-control" name="username" placeholder="Username" type="text">
                            </div>
                            <div class="form-group">
                                <input class="form-control" name="password" placeholder="Password" type="text">
                            </div>
                            <button type="submit" class="btn btn-grey">Sign In</button>
                        </form>

                    </div>
                </nav>
                <!--BEGIN MODAL CONFIG PORTLET-->
                <div id="modal-config" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" data-dismiss="modal" aria-hidden="true" class="close">
                                    &times;</button>
                                <h4 class="modal-title">
                                    Modal title</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget
                                    porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie.
                                    Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis
                                    magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor
                                    vitae quam dictum condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec
                                    aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus
                                    vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium
                                    hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut
                                    ultricies felis.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn btn-default">
                                    Close</button>
                                <button type="button" class="btn btn-primary">
                                    Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--END MODAL CONFIG PORTLET-->
            </div>
            <!--END TOPBAR-->
            <div id="wrapper">
                <!--BEGIN SIDEBAR MENU-->
                <nav id="sidebar" role="navigation" data-step="2" data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
                     data-position="right" class="navbar-default navbar-static-side">
                    <div class="sidebar-collapse menu-scroll">
                        <ul id="side-menu" class="nav">

                            <div class="clearfix"></div>
                            <li class="active"><a href="private/index.jsp"><i class="fa fa-tachometer fa-fw">
                                        <div class="icon-bg bg-orange"></div>
                                    </i><span class="menu-title">Presentación</span></a>
                            </li>
                            <li><a href="private/home.jsp"><i class="fa fa-sitemap fa-fw">
                                        <div class="icon-bg bg-dark"></div>
                                    </i><span class="menu-title">Estadísticas</span></a>
                            </li>
                            <li><a href="private/gestion.jsp"><i class="fa fa-desktop fa-fw">
                                        <div class="icon-bg bg-pink"></div>
                                    </i><span class="menu-title">Gestión</span></a>
                            </li>
                            <li><a href="private/tendencias.jsp"><i class="fa fa-send-o fa-fw">
                                        <div class="icon-bg bg-green"></div>
                                    </i><span class="menu-title">Tendencias</span></a>       
                            </li>
                            <li><a href="objetivos.php"><i class="fa fa-th-list fa-fw">
                                        <div class="icon-bg bg-blue"></div>
                                    </i><span class="menu-title">[WTF] Objetivos Estratégicos</span></a>
                            </li>
                            </li>
                            <li><a href="geco.php"><i class="fa fa-file-o fa-fw">
                                        <div class="icon-bg bg-yellow"></div>
                                    </i><span class="menu-title">[WTF] Gestión Económica</span></a>
                            </li>
                    </div>

                </nav>
                <!--END SIDEBAR MENU-->
                <!--BEGIN PAGE WRAPPER-->
                <div id="main_container">
                    <!--BEGIN TITLE & BREADCRUMB PAGE-->
                    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                        <div class="page-header pull-left">
                            <div class="page-title">Principal</div>
                        </div>
                        <ol class="breadcrumb page-breadcrumb pull-right">
                            <li><i class="fa fa-home"></i>&nbsp;<a href="dashboard.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                            <li class="hidden"><a href="#">Principal</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                            <li class="active">Principal</li>

                        </ol>
                        <div class="clearfix">

                        </div>
                    </div>
                    <!--END TITLE & BREADCRUMB PAGE-->
                    <!--BEGIN CONTENT-->
                    <div class="page-content">
                        <div id="tab-general">
                            <div id="sum_box" class="row mbl">

                                <div class="col-lg-12">
                                    <div class="portlet box">
                                        <div class="portlet-header">
                                            <div class="caption">Panel de alertas</div>
                                            <div style="overflow: hidden;" class="portlet-body">
                                                <script>
                                                    function myFunction(element) {
                                                        var price = $(element).parents("tr").attr("data-price");

                                                        var newPrice = prompt("Introduce el nuevo presupuesto", price);

                                                        if (newPrice != null) {
                                                            //document.getElementById("demo").innerHTML = "Tu presupuesto nuevo es " + person + "! ";
                                                            $(element).parents("tr").attr("data-price", newPrice);
                                                            $(element).parents("tr").find("td.price").text(newPrice);
                                                        }



                                                    }
                                                </script>


                                            </div>
                                        </div>
                                    </div>


                                    <!--END CONTENT-->
                                    <!--BEGIN FOOTER-->
                                    <div id="footer">
                                        <div class="copyright">
                                            <a href="http://themifycloud.com">2017 ADIIU  - Miguel Ángel Martín - David Sahuquillo</a></div>
                                    </div>
                                    <!--END FOOTER-->
                                </div>
                                <!--END PAGE WRAPPER-->
                            </div>
                        </div>


                        <script src="script/jquery.tablesorter.js"></script> 
                        <script src="script/jquery-1.10.2.min.js"></script>
                        <script src="script/jquery-migrate-1.2.1.min.js"></script>
                        <script src="script/jquery-ui.js"></script>
                        <script src="script/bootstrap.min.js"></script>
                        <script src="script/bootstrap-hover-dropdown.js"></script>
                        <script src="script/html5shiv.js"></script>
                        <script src="script/respond.min.js"></script>
                        <script src="script/jquery.metisMenu.js"></script>
                        <script src="script/jquery.slimscroll.js"></script>
                        <script src="script/jquery.cookie.js"></script>
                        <script src="script/icheck.min.js"></script>
                        <script src="script/custom.min.js"></script>
                        <script src="script/jquery.news-ticker.js"></script>
                        <script src="script/jquery.menu.js"></script>
                        <script src="script/pace.min.js"></script>
                        <script src="script/holder.js"></script>
                        <script src="script/responsive-tabs.js"></script>
                        <script src="script/jquery.flot.js"></script>
                        <script src="script/jquery.flot.categories.js"></script>
                        <script src="script/jquery.flot.pie.js"></script>
                        <script src="script/jquery.flot.tooltip.js"></script>
                        <script src="script/jquery.flot.resize.js"></script>
                        <script src="script/jquery.flot.fillbetween.js"></script>
                        <script src="script/jquery.flot.stack.js"></script>
                        <script src="script/jquery.flot.spline.js"></script>
                        <script src="script/zabuto_calendar.min.js"></script>
                        <script src="script/index.js"></script>
                        <!--LOADING SCRIPTS FOR CHARTS-->
                        <script src="script/highcharts.js"></script>
                        <script src="script/data.js"></script>
                        <script src="script/drilldown.js"></script>
                        <script src="script/exporting.js"></script>
                        <script src="script/highcharts-more.js"></script>
                        <script src="script/charts-highchart-pie.js"></script>
                        <script src="script/charts-highchart-more.js"></script>
                        <!--CORE JAVASCRIPT-->
                        <script src="script/main.js"></script>
                        <script>        (function (i, s, o, g, r, a, m) {
                                                        i['GoogleAnalyticsObject'] = r;
                                                        i[r] = i[r] || function () {
                                                            (i[r].q = i[r].q || []).push(arguments)
                                                        }, i[r].l = 1 * new Date();
                                                        a = s.createElement(o),
                                                                m = s.getElementsByTagName(o)[0];
                                                        a.async = 1;
                                                        a.src = g;
                                                        m.parentNode.insertBefore(a, m)
                                                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                                                    ga('create', 'UA-145464-12', 'auto');
                                                    ga('send', 'pageview');


                        </script>
                        </body>
                        </html>


