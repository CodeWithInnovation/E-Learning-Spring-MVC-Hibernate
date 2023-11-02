<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>E-Learning</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Stretch a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link type="text/css" href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet" />
    <link type="text/css" href="<c:url value='/resources/css/style.css' />" rel="stylesheet" />
    <link type="text/css" href="<c:url value='/resources/css/font-awesome.css' />" rel="stylesheet" />
	<link href="//fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mallanna" rel="stylesheet">
</head>

<body >



	<!--Header-->
	<div class="top-bar_sub_w3layouts_agile">
		
		<div class="search">
		<li class="dropdown">
									<a href="#" class="sign" data-toggle="dropdown" data-hover="Pages" role="button" aria-haspopup="true" aria-expanded="false">S'identifier <span class="fa fa-angle-down"></span></a>
									<ul class="dropdown-menu">
										<li><a class="sign" href="#" data-toggle="modal" data-target="#myModal2">Etudiant</a></li>
										<li><a class="sign" href="#" data-toggle="modal" data-target="#myModal21">Enseignant</a></li>
									</ul>
								</li>
			
			<div class="cd-main-header">
				<ul class="cd-header-buttons">
					<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
				</ul>
				<!-- cd-header-buttons -->
			</div>
			<div id="cd-search" class="cd-search">
				<form action="#" method="#">
					<input name="Search" type="search" placeholder="une fois votre saisie faite,cliquez entrer...">
				</form>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="header" id="home">

		<!--/top-bar-->
		<div class="top-bar">
			<div class="header-nav-agileits">

				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Basculer la navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
						<h1><a class="navbar-brand" href="index.html">E-Learning </a></h1>
						<br>
						<h1> <span class="span-text"> Votre portail d'enseignement en ligne</span> </h1>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="top_nav">
								<li><a href="index.html" class="active">Accueil</a></li>
								<li><a href="#">À propos</a></li>
								<li><a href="#">Cours</a></li>
								<li><a href="#l">Enseignants</a></li>
								<li><a href="#">Nous contacter </a></li>
							</ul>
						</nav>
					</div>
				</nav>

			</div>
		</div>
		<!--//top-bar-->
		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="banner-top">
							<div class="banner-info-w3ls-agileinfo">
								<h3>Formation en ligne pour tous : De debutant à expert, nous avons ce qu'il vous faut</h3>
								<a href="#l">Lire la suite <i class="fa fa-caret-right" aria-hidden="true"></i></a>
								<a href="#">Nous contacter <i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top1">
							<div class="banner-info-w3ls-agileinfo">
								<h3>Nouveaux cours passionnants : Decouvrez ce que nous avons à offrir !</h3>
								<a href="#">Lire la suite <i class="fa fa-caret-right" aria-hidden="true"></i></a>
								<a href="#">Nous contacter <i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top2">
							<div class="banner-info-w3ls-agileinfo">
								<h3>L'éducation a portee de clic : Nos formations en ligne accessibles a tous</h3>
								<a href="#l">Lire le suite <i class="fa fa-caret-right" aria-hidden="true"></i></a>
								<a href="#">Nous contacter<i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
					<li>
						<div class="banner-top3">
							<div class="banner-info-w3ls-agileinfo">
								<h3>Developpez vos competences avec nos programmes exclusifs</h3>
								<a href="about.html">Lire la suite<i class="fa fa-caret-right" aria-hidden="true"></i></a>
								<a href="contact.html">Nous contacter<i class="fa fa-caret-right" aria-hidden="true"></i></a>
							</div>

						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>

			<!--banner Slider starts Here-->
		</div>
		<!--//Slider-->
	</div>
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">

						<div class="login-m_page_img">

							<img src="<c:url value='/resources/images/model.jpg' />" alt=" " class="img-responsive" />

						</div>
						<div class="login-m_page">
							<h3 class="sign">Se connecter</h3>
							<div class="login-form-wthree-agile">
								<form:form method="POST" commandName="etudiant" action="${pageContext.request.contextPath}/Etud/login.html">
									<input type="email" name="email" placeholder="E-mail" required="">
									<input type="password" name="password" placeholder="Mot de passe" required="">
									<div class="tp">
										<input type="submit" value="Se connecter">
									</div>
								</form:form>
							</div>
							<div class="login-social-grids">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
							<p><a href="#" data-toggle="modal" data-target="#myModal3"> Vous n'avez pas de compte?</a></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- Modal21 -->
	<div class="modal fade" id="myModal21" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">

						<div class="login-m_page_img">

							<img src="<c:url value='/resources/images/model.jpg' />" alt=" " class="img-responsive" />

						</div>
						<div class="login-m_page">
							<h3 class="sign">Se connecter</h3>
							<div class="login-form-wthree-agile">
								<form:form method="POST" commandName="enseignant" action="${pageContext.request.contextPath}/Ens/login.html">
									<input type="email" name="email" placeholder="E-mail" required="">
									<input type="password" name="password" placeholder="Mot de passe" required="">
									<div class="tp">
										<input type="submit" value="Se connecter" onclick="myFunction();">
									</div>
								</form:form>						
							</div>
							
								<script type="text/javascript">
								function myFunction() {
									
								}
								</script>
							     
							
	
							<div class="login-social-grids">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
							<p><a href="#" data-toggle="modal" data-target="#myModal31"> Vous n'avez pas de compte?</a></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal21 -->
	<!-- Modal3 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">

						<div class="login-m_page_img">

							<img src="<c:url value='/resources/images/model.jpg' />" alt=" " class="img-responsive" />

						</div>
						<div class="login-m_page">
							<h3 class="sign">s'inscrire</h3>
							<div class="login-form-wthree-agile">
								<form:form method="POST" commandName="enseignant" action="${pageContext.request.contextPath}/Etud/add.html">
								<input type="text" name="nom"  placeholder="Nom " required="">
								<input type="text" name="prenom"  placeholder="Prénom" required="">
									<input type="text" name="username"  placeholder="Nom d'utilisateur" required="">
									<input type="email" name="email" placeholder="Email" required="">
									<input type="password" name="mot_passe" placeholder="Mot de passe" required="">
									<input type="password" name="conf_password" placeholder="Confirmer le mot de passe " required="">
									<input type="submit" value="S'inscrire">
								</form:form>
							</div>
							<p><a href="#"> En cliquant sur s'inscrire, j'accepte les conditions </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- Modal21 -->
	<div class="modal fade" id="myModal31" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">

						<div class="login-m_page_img">

							<img src="<c:url value='/resources/images/model.jpg' />" alt=" " class="img-responsive" />

						</div>
						<div class="login-m_page">
							<h3 class="sign">S'inscrire</h3>
							<div class="login-form-wthree-agile">
							
							
							
							
							
								<form:form method="POST" commandName="enseignant" action="${pageContext.request.contextPath}/Ens/add.html">
								<input type="text" name="nom"  placeholder="Nom " required="">
								<input type="text" name="prenom"  placeholder="Prénom" required="">
									<input type="text" name="username"  placeholder="Nom d'utilisateur" required="">
									<input type="email" name="email" placeholder="Email" required="">
									<input type="password" name="mot_passe" placeholder="Mot de passe" required="">
									<input type="password" name="conf_mot_passe" placeholder="Confirmer le mot de passe " required="">
									<input type="text" name="grade"  placeholder="Grade" required="">
									<input type="text" name="tel"  placeholder="+33 ** ** ** **" required="">
									<input type="submit" value="s'inscrire">
								</form:form>
								
							
								
							</div>
							<p><a href="#"> En cliquant sur Inscrivez-vous, j'accepte les conditions </a></p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal21 -->
	<!-- /newsletter-->
	<div class="newsletter">
		<div class="col-sm-6 newsleft">
			<h3>S'inscrire à la newsletter !</h3>
		</div>
		<div class="col-sm-6 newsright">
			<form action="#" method="post">
				<input type="email" placeholder="E-MAIL..." name="email" required="">
				<input type="submit" value="Envoyer">
			</form>
		</div>

		<div class="clearfix"></div>
	</div>
	<!-- //newsletter-->

	<!-- bootstrap-modal-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Luscious
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<img src="<c:url value='/resources/images/model.jpg' />" alt=" " class="img-responsive" />
					<p></p>
				</div>
			</div>
		</div>
	</div>
	<!-- //bootstrap-modal-pop-up -->
	<!--footer-->
	<div class="contact-footer-w3layouts-agile">

		<div class="bottom-social-agileits-w3ls">
			<div class="container">
				<div class="col-md-8 botttom-nav-w3ls-agileits">
					<ul class="f_links col-md-4">
						<li>
							<a href="#">Acceuil</a>
						</li>
						<li>
							<a href="#">A propos</a>
						</li>
						<li>
							<a href="#">Enseignants</a>
						</li>
						<li>
							<a href="#">Cours</a>
						</li>
						<li>
							<a href="#">Nous contacter</a>
						</li>
					</ul>
					
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 social-icons-wthree">
					<h6>Connectez-vous avec nous</h6>
					<a class="facebook" href="#"><span class="fa fa-facebook"></span></a>
					<a class="twitter" href="#"><span class="fa fa-twitter"></span></a>
					<a class="pinterest" href="#"><span class="fa fa-pinterest-p"></span></a>
					<a class="linkedin" href="#"><span class="fa fa-linkedin"></span></a>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
		<div class="copy-w3-agileits">
			<h2 class="footer-logo"><a href="index.html">E-Learning <span> Votre portail d'enseignement en ligne</span></a></h2>
			<p>NAIDJI Mohamed Rami </p>
			<div class="clearfix"></div>
			
		</div>
	</div>
	<!--/footer -->


	<!-- js -->
	<script src="<c:url value='/resources/js/jquery-2.2.3.min.js' />" type="text/javascript"></script>
	
	<!-- //js -->
	<!--search-bar-->
	<script src="<c:url value='/resources/js/main.js'/>" type="text/javascript"></script>
	<script src="<c:url value='/resources/js/responsiveslides.min.js' />" type="text/javascript"></script>

	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.ÃvÃ©nements').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.ÃvÃ©nements').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!--//search-bar-->
	<link type="text/css" href="<c:url value='/resources/css/easy-responsive-tabs.css' />" rel="stylesheet" />
	<script src="<c:url value='/resources/js/easyResponsiveTabs.js' />" type="text/javascript"></script>
	
	<!--Plug-in Initialisation-->
	<script type="text/javascript">
		$(document).ready(function () {

			//Vertical Tab
			$('#parentVerticalTab').easyResponsiveTabs({
				type: 'vertical', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				tabidentify: 'hor_1', // The tab groups identifier
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo2');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
		});
	</script>
	<!--/script-->
	<!-- start-smoth-scrolling -->
	        <script src="<c:url value='/resources/js/move-top.js' />" type="text/javascript"></script>
	        <script src="<c:url value='/resources/js/easing.js' />" type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

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

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <script src="<c:url value='/resources/js/bootstrap-3.1.1.min.js' />" type="text/javascript"></script>
   

</body>

</html>