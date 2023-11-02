<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
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
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	
  	 <link type="text/css" href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet" />
     <link type="text/css" href="<c:url value='/resources/css/style.css' />" rel="stylesheet" />
     <link type="text/css" href="<c:url value='/resources/css/font-awesome.css' />" rel="stylesheet" />
     <link type="text/css" href="<c:url value='/resources/css/about.css' />" rel="stylesheet" />
     <link type="text/css" href="<c:url value='/resources/css/team.css' />" rel="stylesheet" />
     <link type="text/css" href="<c:url value='/resources/css/font-awesome.css' />" rel="stylesheet" />
    

</head>

<body>
	<!--Header-->
	<div class="top-bar_sub_w3layouts_agile">
		
		
		<div class="clearfix"> </div>
	</div>
	


	<div class="header inner_banner" id="home">

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
						<h1><a class="navbar-brand" href="index.html">E-Learning</a></h1>
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
		<!--/ banner-text -->
		<!--// banner-text -->
	</div>
	<div class="services-breadcrumb-w3ls-agile">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.html">Acceuil</a><span>|</span></li>
				<li>Enseignant <span>|</span></li>
			    <li>Profil</li>
			</ul>
		</div>
	</div>
	<!--//short-->

	    <hr>
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-sm-10"><h1>${EnsObj.username}</h1></div>
        <div class="col-sm-2"><a href="${pageContext.request.contextPath}/Ens/logout.html" class="pull-right"><img title="Deconexion" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
        <div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div></hr><br>

               

          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activité <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Cours</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Quiz</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Abonnés</strong></span> 78</li>
          </ul> 
               
          
        </div><!--/col-3-->
        <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#info">Informations personnele</a></li>
                <li><a data-toggle="tab" href="#messages">Cours</a></li>
                <li><a data-toggle="tab" href="#settings">Quiz</a></li>
              </ul>

              
          <div class="tab-content">
           
              <div class="tab-pane active" id="info">
               
               <h2></h2>
               
               <hr>
                   <form:form method="POST" commandName="enseignant" action="${pageContext.request.contextPath}/Ens/edit/${EnsObj.id}.html">                     
 
 				<div class="form-group"> 
                          <div class="col-xs-6">
                              <label for="first_name"><h4> <b>Nom</b></h4></label>
                              <input type="text" class="form-control" name="nom" id="first_name" value="${EnsObj.nom}" required="" >
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4><b>Prénom</b></h4></label>
                              <input type="text" class="form-control" name="prenom" id="last_name" value="${EnsObj.prenom}" required="">
                          </div>
                      </div>
          
                     <div class="form-group">                       
                          <div class="col-xs-6">
                              <label for="email"><h4><b>Email</b></h4></label>
                              <input type="email" class="form-control" name="email" id="email" value="${EnsObj.email}" required="">
                          </div>
                      </div>

                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4><b>Numéro de portable</b> </h4></label>
                              <input type="text" class="form-control" name="tel" id="phone" value="${EnsObj.tel}" required="">
                          </div>
                      </div>
          
               
                 <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4><b>Mot de passe</b></h4></label>
                              <input type="password" class="form-control" name="mot_passe" id="password" placeholder="Mot de passe" required="">
                          </div>
                      </div>


               <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4><b>Grade</b></h4></label>
                              <input type="text" class="form-control" name="grade" id="Grade" value="${ens.grade}" required="">
                          </div>
                      </div>
                     
                      
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4><b>Confirmez votre mot de passe</b></h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="Confirmer" required="" >
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Enregistre</button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Effacer</button>
                            </div>
                      </div>
                </form:form>
               
             </div><!--/tab-pane-->


             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
               <hr>
             <form:form method="POST" commandName="Cour" enctype="multipart/form-data" action="${pageContext.request.contextPath}/Cour/add.html">                     
                     
                     
                     <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4> <b>Nom du cour</b> </h4></label>
                              <input type="text" class="form-control" name="name" placeholder="Nom de cour" id="first_name" required="">
                          </div>
                    </div>                     
					
					
					<div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Description</b> </h4></label>
                              <input type="textarea" class="form-control" name="description" placeholder="Description" id="first_name" required="">
                          </div>
                    </div> 
					
					
					
					<div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4><b>Telecharger le cour</b></h4></label>
                            <input type="file" class="form-control"   name="Cr" size="50" required="" >

                          </div>
                      </div>
 
 				    <div class="form-group">
                          
                          <div class="col-xs-6">
                              <input type="hidden" class="form-control" name="ens_id" id="first_name" value="${EnsObj.id}">
                          </div>
                    </div>
                    
                     <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                   <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Ajouter</button>
                                
                            </div>
                      </div>
                  </form:form>
                  
               
   <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Id cour</th>
      <th scope="col">Nom du cour</th>
      <th scope="col">Description</th>      
      <th scope="col">Opération</th>   
    </tr>
  </thead>
  <tbody>
  <c:forEach var="cours" items="${cours}">
    <tr>
      <td>${cours.id}</td>
      <td>${cours.name}</td>
      <td>${cours.description}</td>    
      <td>
      <a href="${pageContext.request.contextPath}/Cour/download/${cours.id}.html"><i class="glyphicon glyphicon-download-alt"></i> </a>
      <a href="${pageContext.request.contextPath}/Cour/suprimer/${cours.id}.html"><i class="glyphicon glyphicon-trash"></i> </a>
      </td>

 </tr>   
 </c:forEach> 
 </tbody>
</table>
					


             </div><!--/tab-pane-->
             <div class="tab-pane" id="settings">
                    
                   <form:form method="POST" commandName="enseignant" action="${pageContext.request.contextPath}/Quiz/add.html">                     
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Question du quiz</b> </h4></label>
                              <input type="text" class="form-control" name="question" id="first_name" placeholder="Question" required="">
                          </div>
                      </div>
                      
					
                          
					
					
					<div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Choix 1</b> </h4></label>
                              <input type="text" class="form-control" name="choix1" id="first_name" placeholder="Choix 1" required="">
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Choix 2</b> </h4></label>
                              <input type="text" class="form-control" name="choix2" id="first_name" placeholder="Choix 2" required="" >
                          </div>
                      </div>
 
 				    <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Choix 3</b> </h4></label>
                              <input type="text" class="form-control" name="choix3" id="first_name" placeholder="Choix 3"  required="">
                          </div>
                    </div>
                    
                    
                    <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4><b>Id Cour</b> </h4></label>
                              <input type="text" placeholder="Id cour" class="form-control" name="cour_id" id="first_name" required="">
                          </div>
                    </div>
                    
                     <div class="form-group">
                          
                          <div class="col-xs-6">
                              <input type="hidden" class="form-control" name="ens_id" id="first_name"  value="${EnsObj.id}">
                          </div>
                    </div>     
                          
                  			      
                     <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                   <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Ajouter</button>
                                
                            </div>
                      </div>
                  </form:form>
                       
    <table class="table table-striped">
  	<thead>
    <tr>
      <th scope="col">Numéro de Quiz</th>
      <th scope="col">Nom du Cour</th>
      <th scope="col">Question</th>      
      <th scope="col">Choix1</th>   
      <th scope="col">Choix2</th>   
      <th scope="col">Choix3</th>   
      <th></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="quizs" items="${quizs}">
    <tr>
      <td>${quizs.id} </td>
      <td></td>
      <td>${quizs.question}</td>
      <td>${quizs.choix1}</td>
      <td>${quizs.choix2}</td>
      <td>${quizs.choix3}</td>  
      <td><a href="${pageContext.request.contextPath}/Quiz/suprimer/${quizs.id}.html">Supprimer</a><br/></td>          
 </tr>   
 </c:forEach>
 </tbody>
</table>
			       
   
                       
                       
                       
                       
                       
                       
                       
                       
                       
                            
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</div>
	<!--footer-->
	<div class="contact-footer-w3layouts-agile">

		<div class="bottom-social-agileits-w3ls">
			<div class="container">
				<div class="col-md-8 botttom-nav-w3ls-agileits">
					<ul class="f_links col-md-4">
						<li>
							<a href="index.html">Accueil</a>
						</li>
						<li>
							<a href="about.html">A propos</a>
						</li>
						<li>
							<a href="services.html">Enseignants</a>
						</li>
						<li>
							<a href="courses.html">Cours</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
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
			<h2 class="footer-logo"><a href="index.html">Education Dz <span> Éducation en ligne</span></a></h2>
			<p>NAIDJI Mohamed Rami <Br> DAHDOUH Ahmed </p>
			<div class="clearfix"></div>
			
		</div>
	</div>
	<!--/footer -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
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
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>

</html>