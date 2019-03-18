		<div class="outter-wp">
		<?Php
 $server = "localhost";
	 $username = "root";
	 $password = "";
	 $dbname = "march9";
	 
	 try{
		 $connectdb= new PDO("mysql:host={$server};dbname={$dbname}", $username,$password);
		 $connectdb->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	 }
	 catch(PDOException $ex){
		 
		 die($ex->getMessage());
	 }
		 $term1=$connectdb->prepare("SELECT count(mark) as fail FROM `mark` WHERE term=7 and mark<50");
		 $term2=$connectdb->prepare("SELECT count(mark) as Pass FROM `mark` WHERE term=7 and mark>50");
		 $term3=$connectdb->prepare("SELECT count(mark) as fail FROM `mark` WHERE term=6 and mark<50");
		 $term4=$connectdb->prepare("SELECT count(mark) as Pass FROM `mark` WHERE term=6 and mark>50");
		 $term5=$connectdb->prepare("SELECT count(mark) as fail FROM `mark` WHERE term=5 and mark<50");
		 $term6=$connectdb->prepare("SELECT count(mark) as Pass FROM `mark` WHERE term=5 and mark>50");
		 $stmt=$connectdb->prepare("SELECT MAX(A.mark) as mark, C.subject_name,E.st_fullname 
		 FROM mark A inner join student_subject_enrol B on A.ssecode=B.scecode inner join 
		 subjects_info C on B.subject=C.id inner join 
		 student_class_enrol D on D.sccode=B.sccode inner join 
		 st_info E on D.scode=E.st_id GROUP By C.subject_name");
		  		 
$term1->execute();
$term2->execute();
$term3->execute();
$term4->execute();
$term5->execute();
$term6->execute();
$stmt->execute();
$jterm1;
$jterm2;
$jterm3;
$jterm4;
$jterm5;
$jterm6;
$json7=[];
$json8=[];
while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json7[]= (int)$mark;
	$json8[]= $subject_name;
}
//echo json_encode($json7);
	//	 echo json_encode($json8);
while($row=$term1->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json1= (int)$fail;
}
while($row=$term2->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json2= (int)$Pass;
}
while($row=$term3->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json3= (int)$fail;
}
while($row=$term4->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json4= (int)$Pass;
}
while($row=$term5->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json5= (int)$fail;
}
while($row=$term6->fetch(PDO::FETCH_ASSOC)){
	extract($row);
	$json6= (int)$Pass;
}
		 ?>
		 

					<!--/tabs-->
					<div class="tab-main">
						<!--/tabs-inner-->
						<div class="tab-inner">
							<div id="tabs" class="tabs">
								<h2 class="inner-tittle">Welcome, <?php echo $info_display['t_fullname']; ?>  </h2>
								<div class="graph">
									<nav>
										<ul>
											<li><a href="#section-1" class="icon-shop"><i class="lnr lnr-list"></i> <span>highest Mark</span></a></li>
											<li><a href="#section-2" class="icon-shop"><i class="lnr lnr-list"></i> <span>Subject Term1</span></a></li>
											
											<li><a href="#section-3" class="icon-shop"><i class="lnr lnr-list"></i> <span>Subject Term2</span></a></li>
											
											<li><a href="#section-4" class="icon-shop"><i class="lnr lnr-list"></i> <span>Subject Term3</span></a></li>
											
										</ul>
									</nav>
									<div class="content tab">

										<section id="section-1">
	
											<div class="mediabox">
																			<div class="container" width="10" height="10">
<canvas id="subject" ></canvas>
</div>
Subjects

<script type="text/javascript" src="js/Chart.min.js"> </script>
<script type="text/javascript">
var ctx = document.getElementById('subject').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: <?php echo json_encode($json8)?>,
        datasets: [{
            label:'Highest Mark per Subject',
		data: <?php echo json_encode($json7)?>,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
 </script>

											</div>
											
										</section>
			
										<section id="section-2">
	
											<div class="mediabox">
																			<div class="container" width="10" height="10">
<canvas id="myChart" ></canvas>
</div>
Total: <?php echo $total=json_encode($json6)+json_encode($json5)?>

<script type="text/javascript" src="js/Chart.min.js"> </script>
<script type="text/javascript">
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Fail','Pass'],
        datasets: [{
            label: '# of Subjects Pass',
		data: ['<?php echo json_encode($json5)?>','<?php echo json_encode($json6)?>'],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
 </script>

											</div>
											
										</section>
			
										<section id="section-3">
	
											<div class="mediabox">
																			<div class="container" width="10" height="10">
<canvas id="myChart1" ></canvas>
</div>
Total: <?php echo $total2=json_encode($json3)+json_encode($json4)?>

<script type="text/javascript" src="js/Chart.min.js"> </script>
<script type="text/javascript">
var ctx = document.getElementById('myChart1').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Fail','Pass'],
        datasets: [{
            label: '# of Subjects Pass',
		data: ['<?php echo json_encode($json3)?>','<?php echo json_encode($json4)?>'],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
 </script>

											</div>
											
										</section>
			<section id="section-4">
	
											<div class="mediabox">
																			<div class="container" width="10" height="10">
<canvas id="myChart2" ></canvas>
</div>
Total: <?php echo $total1=json_encode($json1)+json_encode($json2)?>

<script type="text/javascript" src="js/Chart.min.js"> </script>
<script type="text/javascript">
var ctx = document.getElementById('myChart2').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Fail','Pass'],
        datasets: [{
            label: '# of Subjects Pass',
		data: ['<?php echo json_encode($json1)?>','<?php echo json_encode($json2)?>'],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
 </script>

											</div>
											
										</section>
			


		
									</div>
									<!-- /content -->
								</div>
								<!-- /tabs -->

							</div>
								
							<script src="js/cbpFWTabs.js"></script>
							<script>
								new CBPFWTabs(document.getElementById('tabs'));
							</script>
							<div class="clearfix"> </div>
						</div>
					</div>
					<!--//tabs-inner-->


					<!--custom-widgets-->
					<div class="custom-widgets">
						<div class="row-one">
							<div class="col-md-3 widget">
								<div class="stats-left ">
									<h5>Total</h5>
									<h4> Students</h4>
								</div>
								<div class="stats-right">
									<label>90</label>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 widget states-mdl">
								<div class="stats-left">
									<h5>Total</h5>
									<h4>Teachers</h4>
								</div>
								<div class="stats-right">
									<label> 85</label>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 widget states-thrd">
								<div class="stats-left">
									<h5>Total</h5>
									<h4>Courses</h4>
								</div>
								<div class="stats-right">
									<label>51</label>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 widget states-last">
								<div class="stats-left">
									<h5>Total</h5>
									<h4>Passout</h4>
								</div>
								<div class="stats-right">
									<label>30</label>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<!--//custom-widgets-->

					<!--/charts-->
					<div class="charts">
						<div class="chrt-inner">
							<!--//weather-charts-->
							<div class="graph-visualization">
								<div class="col-md-6 map-1">
									<h3 class="sub-tittle">Profile </h3>


								</div>
								<div class="col-md-6 map-2">
									<div class="profile-nav alt">
										<section class="panel">
											<div class="user-heading alt clock-row terques-bg">
												<h3 class="sub-tittle clock">Easy Clock </h3>
											</div>
											<ul id="clock">
												<li id="sec"></li>
												<li id="hour"></li>
												<li id="min"></li>
											</ul>



										</section>

									</div>
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<!--/charts-inner-->
					</div>
					<!--//outer-wp-->
				</div>
		