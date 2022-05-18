<!DOCTYPE HTML>

<html>
	<head>
		<title>Generic - Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Event</strong> </a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>특별 이벤트!!</h1>
									</header>

									<span class="image main"><img src="images/pic01.jpg" alt="" /></span>

									
									<hr class="major" />

								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="index.html">홈페이지</a></li>
										<li><a href="generic.html">이벤트!</a></li>
										<li><a href="elements.html">무료 교육</a></li>
										<li>
											<span class="opener">세미나</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#"></a>참여 문의</li>
										<li><a href="#">참여 단체</a></li>
										<li>
											<span class="opener">놀이터</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">공지사항</a></li>
										<li><a href="#">게시판</a></li>
										
									</ul>
								</nav>

							

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>



<?php                                                                                                                                                                         
  $host = 'database-1-instance-1.cikqmm1tvhfr.ap-northeast-2.rds.amazonaws.com:3306';                                                                                             
  $user = 'admin';                                                                                                                                                            
  $pw = 'snfndwl1!1';                                                                                                                                                                  
  $dbName = 'mysql';                                                                                                                   
                                                                                                                                                                          
  $conn = mysqli_connect($host, $user, $pw, $dbName);                                                                                                                         
  if (mysqli_connect_errno())                                                                                                                                                     
  {                                                                                                                                                                           
      echo "MySQL failed to connect". mysqli_connect_error();                                                                                                                              
      exit;                                                                                                                              
  }else{                                                                                                                                                                  
      echo "MySQL connection success.";                                                                                                                                             
  }                                                                                                                                                                               
                                                                                                                                                                              
  mysqli_close($conn);                                                                                                                                                                 
?>            
