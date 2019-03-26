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
    <body style="text-align: center">
        <nav class="navbar navbar-default navbar-fixed-top" style="background-color: midnightblue" role="navigation">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home.htm">DRIVEZY</a>
            
        </nav>
        
        <div style="margin-top: 100px;">
	        <h1>Please do not refresh this page...</h1>
	    
		    <form method="post" action="${paytmDto.paytmUrl }" name="f1">
	               <input type="hidden" name="MID" value="${paytmDto.mid }"/>
	               <input type="hidden" name="ORDER_ID" value="${paytmDto.transactionDto.orderId }"/>
	               <input type="hidden" name="CUST_ID" value="${paytmDto.transactionDto.customerId }"/>
	               <input type="hidden" name="INDUSTRY_TYPE_ID" value="${paytmDto.industryType }"/>
	               <input type="hidden" name="CHANNEL_ID" value="${paytmDto.channelId }"/>
	               <input type="hidden" name="TXN_AMOUNT" value="${paytmDto.transactionDto.amount }"/>
	               <input type="hidden" name="WEBSITE" value="${paytmDto.website }"/>
	               <input type="hidden" name="CALLBACK_URL" value="${paytmDto.callBackUrl }"/>
	               <input type="hidden" name="CHECKSUMHASH" value="${paytmDto.paytmChecksum }"/>
	  			</form>
	        <script type="text/javascript">
				document.f1.submit();
	        </script>
        </div>
     <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>