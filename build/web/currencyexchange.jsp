<%-- 
  Title         : Assignment2.
  Subject       : Internet Programming
  Author        : Mohd Rafyiq Bin Ramli
  Matrix Number : SX085606CJD04 
  Lecturer      : Dr. Hishammuddin Bin Asmuni
--%>
    <body>
        <%@include file="htmlheadtag.jsp" %>
        <%@include file="header.jsp" %>


        <div class="container">
            <%@include file="menu.jsp" %>
            <div class="row">
                <div class="box">
                    <div class="col-lg-12 text-center">
                        <h1 class="brand-name">Currency Exchange
                        <img src="img/currency1.jpg" alt=""/></h1>
                    </div>
                </div>
            </div>



            <div class="row">
                <div class="box">
                    <div class="col-lg-6">
                        <hr>
                            <h2 class="intro-text text-center">Question 2 :
                                <strong>Currency Exchange Problem</strong>
                            </h2>
                        <hr>

                        <hr class="visible-xs">
                        <p>Develop a web program allows users to input VND and choose either USD or EUR as well as JPY to exchange. Following table is the exchange rates from VND:</p>
                        <img class="img-responsive img-border img-left" src="img/currency-value.jpg" alt="">

                    </div>
                    <div class="col-lg-6">
                        <hr>
                        <h2 class="intro-text text-center">Answer :<strong> Currency Exchange</strong></h2>
                        <hr>
                        <hr class="visible-xs">
                        <div align="center">
                            <div style="background-color:blue; color:white; font-weight:bold; ">Currency Exchange</div><br>
                            <form action="currencyexchange.jsp" method="POST">
                                VND :<input type="text" name="vndTextBox" id="vndTextBox" value=""/><br><br>
                                <input type="radio" name="desCurrencyRadio" value="USD" id="desCurrencyRadio_0" />USD
                                <input type="radio" name="desCurrencyRadio" value="EUR" id="desCurrencyRadio_1" />EUR
                                <input type="radio" name="desCurrencyRadio" value="JPY" id="desCurrencyRadio_2" />JPY  <br><br>
                                <input type="submit" name="exchangeButton" id="exchangeButton" value="Exchange" />
                            </form>
                        </div>

                        <%
                        String semakvnd = request.getParameter("vndTextBox");
                        String semakcurrency = request.getParameter("desCurrencyRadio");
                        if (semakvnd == null && semakcurrency == null)
                        {%>
                            <div align="center"><h4>You can enter VND and Choose currency</h4></div>
                    <% } else if (semakvnd.length() == 0 && semakcurrency == null) {  %>
                           <div align="center"><h4>Please Enter VND and Choose currency</h4></div>
                    <% }else if (semakvnd.length() == 0 && semakcurrency != null) { %>
                           <div align="center"><h4>Please Enter VND</h4></div>
                    <% }else if (semakvnd.length()!= 0 && semakcurrency == null) { %>
                            <div align="center"><h4>Please Choose currency</h4></div>
                    <% } else {
                            double vnd = 0;
                            String exchangeSelect;
                            double usd = 16452;
                            double eur = 25170.38;
                            double jpy = 151.23;
                            double exchangevalue = 0;         
                            vnd = Float.parseFloat(request.getParameter("vndTextBox"));
                            exchangeSelect = request.getParameter("desCurrencyRadio"); 
                            DecimalFormat df = new DecimalFormat("#,###,##0.00");
                            String status = new String();

                            //Start : Currency Exchange Calculate
                            if (null != exchangeSelect)
                                {
                                    if(exchangeSelect == "USD")
                                        exchangevalue = vnd / usd;
                                    else if (exchangeSelect == "EUR")
                                        exchangevalue = vnd / eur;
                                    else
                                        exchangevalue = vnd / jpy;
                                }
                            //Fininsh : Currency Exchange Calculate    
%>
        <div align="center">
           <h4><%= vnd %> VND equals <%= df.format(exchangevalue) %><%= exchangeSelect %></h4>
        </div>

 <% } %> 
                    </div>                
                </div>
            </div>

            <div class="row">
                <div class="box">


                        <hr>
                        <h2 class="intro-text text-center">JSP 
                            <strong>Code</strong>
                        </h2>
                        <hr>
                        <iframe src="sourcecode/currencyexchange.txt" width="100%" height="100%"></iframe>                                       

                </div>
        </div>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>
