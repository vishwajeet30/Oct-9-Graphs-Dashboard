<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/style1.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/all.min.css" media="all">
<link rel="stylesheet" href="css/style.css" media="all">
<script src="bar.js" type="text/javascript"></script>
<script src="js/Charts.js"></script>
    <!-- Bootstrap CSS -->
   

  
    <style>
      * {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
      }
      .chartMenu {
        width: 100vw;
        height: 40px;
        background: #1A1A1A;
        color: rgba(54, 162, 235, 1);
      }
      .chartMenu p {
        padding: 10px;
        font-size: 20px;
      }
      .chartCard {
        width: 100vw;
        height: calc(100vh - 40px);
        background: rgba(54, 162, 235, 0.2);
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .chartBox {
        width: 700px;
        padding: 20px;
        border-radius: 20px;
        border: solid 3px rgba(54, 162, 235, 1);
        background: white;
      }
    </style>
    <title>Chart</title>
  </head>
<body style="background-color: #87adf5;">
	<div class="container-fluid">
  <div class="row">
    <div class="col">
<div class="col-12 my-5">
<div class="card">
<div class="card-body">
Gender Statistics
<hr>
<canvas id="canvasPAX1" class="chart" style="max-width: 100%;  background: linear-gradient(to bottom, #ffffff 35%, #ff9fbf 100%);
"></canvas>
</div>
</div>
</div>   
</div>   

    
	<script>
		// Data define for bar chart


var data = {
			labels: ["Oct 1", "Oct 2", "Oct 3", "Oct 4", "Oct 5", "Oct 6", "Oct 7"],

  datasets: [
    {
      label: 'Male',
      data: [55,50,35,88,76,23,62],
      borderColor: "#377ff3",
	  //borderWidth: 1,
      backgroundColor: '#377ff3',
      
    },
    {
      label: 'Female',
      borderColor: "#e10076",
	  //borderWidth: 2,      
      data: [75,49,40,83,60,73,62],
      backgroundColor: '#FF4B91',
    },
    {
      label: 'Others',
      borderColor: "#00e0b2",
	  //borderWidth: 2,      
      data: [64,49,29,38,71,56,57],
      backgroundColor: '#00e0b2',


    }
  ]
};
		// Options to display value on top of bars

		var myoptions = {
				
scales: {
		yAxes: [{
		ticks: { beginAtZero: true },
		stacked: true,
		          stackType: '100%',

		}],
		xAxes: [{
		stacked: true,display: false,
		          stackType: '100%',

		}]
},
		 title: {
		        fontSize: 14,		
		      },
			tooltips: {
				enabled: true
			},
			hover: {
				animationDuration: 2
			},
			animation: {
			duration: 1,
			onComplete: function () {
				var chartInstances = this.chart,
					ctx = chartInstances.ctx;
					ctx.textAlign = 'center';
					ctx.fillStyle = "#fff";
					ctx.textBaseline = 'bottom';
					ctx.font = "bold 14px Verdana";

					this.data.datasets.forEach(function (dataset, i) {
						var metas = chartInstances.controller.getDatasetMeta(i);
						metas.data.forEach(function (bar, index) {
							var data = dataset.data[index];
							ctx.fillText(data, bar._model.x-14, bar._model.y+9 );
							
						});
					});
				}
			},
			
		};

		
		//Code to drow Chart

var ctx = document.getElementById('canvasPAX1').getContext('2d');
	var stackedBar = new Chart(ctx, {
    type: 'horizontalBar',
    data: data,
    options: myoptions
});

	</script>
<!--******************-->
    <div class="col">
<div class="col-10 my-5">
<div class="card">
<div class="card-body">
Age Wise Statistics
<hr>
<canvas id="canvasAge" class="chart"     background: linear-gradient(to bottom, #ffffff 35%, #b3cffb 100%);"></canvas>
</div>
</div>
</div>   
</div>
</div>   
</div>   

  
<script src="js/chart.min.js"></script>
<script src="js/chartjs-plugin-datalabels.min.js"></script>
	
	<script>
    Chart.register(ChartDataLabels);

		// Data define for bar chart

		var myData = {
				labels: ['A', 'B','M','N','O','P','Q','R','S','T','U','V','W','X','Y'],
				  datasets: [{
				    data: [35,57,46,83,16,76,99,51,24,65,76,23,49,22],
				    backgroundColor: [
				      '#EA1179',
				      '#B5EAEA',
				      '#0802A3',
				      '#D83F31',
				      '#F4E869',
				      'aqua',
				      '#F1C93B',
				      '#3AA6B9',
				      'red',
				      'coral',
				      'green',
				      'yellow',
				      '#FFECEC',
				      '#9336B4',

				      				    ],
				    hoverOffset: 4,
				    circumference: 180,
				    rotation:270
				  }]

		};
		 	
		// Options to display value on top of bars

		var myoptions = {
				 title: {
					        fontSize: 18,		
					      },
			tooltips: {
				enabled: true
			},
			hover: {
				animationDuration: 2
			},
		       plugins: {
		            datalabels: { // This code is used to display data values
		                anchor: 'end',
		                align: 'top',
		                formatter: Math.round,
		                font: {
		                    weight: 'bold',
		                    size: 16,
		                }
		            }
		        }

		};
		
		//Code to drow Chart

		var ctx = document.getElementById('canvasAge').getContext('2d');
		var myCharts = new Chart(ctx, {
			type: 'doughnut',    	// Define chart type
			data: myData,    	// Chart data
			options: myoptions 	// Chart Options [This is optional paramenter use to add some extra things in the chart].
		});

	</script>










</body>
</html>