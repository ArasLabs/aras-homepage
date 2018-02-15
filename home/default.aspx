<%@ Page Language="c#" %>
<%@ Import namespace="System.IO"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Aras Installations</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>

<body>
	<nav class="navbar navbar-dark bg-dark">
		<!-- Navbar content -->
		<a class="navbar-brand" href="#">SERVER NAME</a>
</nav>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Innovator</th>
								<th class="column2">Nash</th>
								<th class="column3">Admin</th>
							</tr>
						</thead>
						<tbody>
							<%
								string root = "C:\\Program Files (x86)\\Aras";

								// create a list of folder names you don't want listed
								List<string> skip = new List<string>();
								skip.Add("Aras Update");
								skip.Add("Aras MyI People");
								
								foreach (string file_name in Directory.GetDirectories(root))
								{
									string subfoldername = file_name.Substring(root.Length+1);
									if (!skip.Contains(subfoldername))
									{
										string row = "<tr class='table100-head'>";
										row += "<td class='column1'><a href='../";
										row += subfoldername + "/' target='_new'>";
										row += subfoldername + "</a></td><td class='column2'><a href='../";
										row += subfoldername + "/Client/Scripts/nash.aspx' target='_new'>";
										row += "Run Nash" + "</a></td>" + "<td class='column3'><a href='../";
										row += subfoldername + "/?username=admin' target='_new'>";
										row += "Login as Admin" + "</a></td>" + "</tr>";

										Response.Write(row);
									}
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>

</html>