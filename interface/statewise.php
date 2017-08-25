 <?php
$con=mysql_connect("localhost","root") or die("Failed to connect with database!!!!");
mysql_select_db("osm", $con); 
// The Chart table contains two fields: weekly_task and percentage
// This example will display a pie chart. If you need other charts such as a Bar chart, you will need to modify the code a little to make it work with bar chart and other charts
$sth = mysql_query("SELECT * FROM analysis");
$state = $_GET['variable'];
echo "<link rel='stylesheet' href='css/bootstrap.css'> <link rel='stylesheet' href='css/style.css'>";
echo "<h1 id = 'statehead' class = 'text-center'>Analysis of ",$state,"</h1>";

/*
---------------------------
example data: Table (Chart)
--------------------------
weekly_task     percentage
Sleep           30
Watching Movie  40
work            44
*/

$rows = array();
//flag is not needed
$flag = true;
$table = array();
$table['cols'] = array(

    // Labels for your chart, these represent the column titles
    // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title
    array('label' => 'Issue', 'type' => 'string'),
    array('label' => $state, 'type' => 'number')

);

$rows = array();
while($r = mysql_fetch_assoc($sth)) {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['Issue']); 

    // Values of each slice
    $temp[] = array('v' => (int) $r[$state]); 
    $rows[] = array('c' => $temp);
}

$table['rows'] = $rows;
$jsonTable = json_encode($table);
//echo $jsonTable;
?>

<html>
  <head>
	<link href="css/robotoslab.css" rel="stylesheet">
    <!--Load the Ajax API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript">
	
    // Load the Visualization API and the piechart package.
    google.load('visualization', '1', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);

    function drawChart() {

      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable?>);
      var options = {
          title: 'Issues mentioned in tweets in support of Hillary Clinton',
          is3D: 'true',
          width: 800,
          height: 600,
		  colors: ['#f23c55', '#2a2f36', '#31797d', '#61c791', '#e0ffb3', '#635a8e', '#4eb29c', '#5c564b', '#f28542', '#a71421', '#430716']
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
    </script>
  </head>

  <body  onload = "return ran_col()">
    <!--this is the div that will hold the pie chart-->
    <div id="chart_div"></div>
	
  </body>
</html>