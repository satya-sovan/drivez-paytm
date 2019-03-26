
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

        <div class="container">
            
            <div class="row" style="margin-top:15%;margin-left: auto;margin-right: auto;">
                
                <div class="col-md-8 col-lg-8 col-md-offset-2">
                    
                    <div class="row">
                        
                        <div class="col-md-6 col-lg-6">
                            
                            <img src="${imgUrl}" class="img-responsive" alt="Image">
                            
                        </div>
                        
                        <div class="col-md-6 col-lg-6">
                            
                            <form action="${pageContext.request.contextPath}/pay.htm" method="POST" class="form-inline" role="form">
                                <input type="hidden" value="10" name="amount" id="amount">
                                <div class="form-group">
                                    <label  for="hour">No of hours</label>
                                    
                                    <select class="form-control" id="hour" name="hour" onchange="changeHour(this)">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        
                                    </select>
                                </div>
                                                             
                                                            
                                <br>

                            <span style="font-size: 20px;color: black;">Total Fare:: <span id="totalFare">10</span> rupee</span><br>
                            <button type="submit" class="btn btn-primary" style="margin-top: 10px">Pay</button>
                            </form>
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>

        </div>

        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            function changeHour(obj){
                
                let totalAmount = $(obj).val() * 10;
                $("#amount").val(totalAmount);
                
                $("#totalFare").text(totalAmount);
            }
        </script>
    </body>
</html>
