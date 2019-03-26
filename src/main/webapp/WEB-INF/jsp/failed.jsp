
<!DOCTYPE html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Title Page</title>

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top" style="background-color: midnightblue" role="navigation">
            <a class="navbar-brand" href="/home.htm">DRIVEZY</a>
            
        </nav>
        <div class="container" style="margin-top: 100px;">
            
            <div class="row">
                               
                <div class="col-md-6 col-lg-6 ">
                	<h1>Failed</h1>
                    <table class="table table-condensed">
					  <tr>
					    <td>TXNID</td>
					    <td>${paytmResponseBeen.TXNID}</td>
					  </tr>
						<tr>
					    <td>ORDERID</td>
					    <td>${paytmResponseBeen.ORDERID}</td>
					  </tr>
					  <tr>
					    <td>TXNAMOUNT</td>
					    <td>${paytmResponseBeen.TXNAMOUNT}</td>
					  </tr>
					  <tr>
					    <td>STATUS</td>
					    <td>${paytmResponseBeen.STATUS}</td>
					  </tr>
					  <tr>
					    <td>RESPCODE</td>
					    <td>${paytmResponseBeen.RESPCODE}</td>
					  </tr>
					  <tr>
					    <td>MID</td>
					    <td>${paytmResponseBeen.MID}</td>
					  </tr>
					  <tr>
					    <td>RESPMSG</td>
					    <td>${paytmResponseBeen.RESPMSG}</td>
					  </tr>

					</table>  
                </div>
               
            </div>
            
        </div>
        

        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
