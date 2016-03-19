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
                    <div class="col-lg-6 text-center">
                        <h1 class="brand-name">Tuition Fee Calculation</h1>
                    </div>
                    <div class="col-lg-6 text-center">
                        <img src="img/tuition1.jpg" alt="" width="100%" />
                    </div>
                </div>
            </div>



            <div class="row">
                <div class="box">
                    <div class="col-lg-6">
                        <hr>
                            <h2 class="intro-text text-center">Question 3 :
                                <strong>Tuition Fee Calculation Problem</strong>
                            </h2>
                        <hr>

                        <hr class="visible-xs">
                        <p>Given the cost of AAS course is $120, ESL course is $75. Developing a web program calculate the tuition of a student when knows number of AAS, ESL courses and type of student.</p>
                        <p>Type of student can be Normal (0% discount), 10$ discount, 20% discount or 50% discount.</p>
                        

                    </div>
                    <div class="col-lg-6">
                        <hr>
                        <h2 class="intro-text text-center">Answer :<strong> Tuition Fee Calculation</strong></h2>
                        <hr>
                        <hr class="visible-xs">
                        <div align="center">
                            <div style="background-color:blue; color:white; font-weight:bold; ">Tuition Fee Calculation</div><br>
                            <form action="tuition.jsp" method="POST">
                                Number of AAS course(s):<input type="text" name="aasTextBox" id="aasTextBox">(RM120)<br><br>
                                Number of ESL course(s):<input type="text" name="eslTextBox" id="eslTextBox">(RM75)<br><br>
                                Type of Student<select name="discountRateSelectBox">
                                                    <option value="0">Normal</option>
                                                    <option value="10">10% Discount</option>
                                                    <option value="20">20% Discount</option>
                                                    <option value="50">50% Discount</option>
                                               </select><br><br>
                                <input type="submit" value="Calculate" name="calculateButton" />
                            </form>
                        </div>

                        <%
                        String semakaas = request.getParameter("aasTextBox");
                        String semakesl = request.getParameter("eslTextBox");
                        String semakdiscount = request.getParameter("discountRateSelectBox");
                        if (semakaas == null && semakesl == null && semakdiscount == null )
                        {%>
                            <div align="center"><h4>You can fill up the form</h4></div>
                     <% } else if (semakaas.length() == 0 && semakesl.length() == 0) {  %>
                           <div align="center"><h4>Please fill up the form</h4></div>
                    <% }else if (semakaas.length() == 0 && semakesl.length() != 0) { %>
                           <div align="center"><h4>Please Enter AAS</h4></div>
                    <% }else if (semakaas.length() != 0 && semakesl.length() == 0 ) { %>
                           <div align="center"><h4>Please Enter ESL</h4></div>
                    <% }else if (semakdiscount == null) { %>
                            <div align="center"><h4>Please Choose discount</h4></div>
                    <% } else {
                            int aasPrice, eslPrice, aasNumber, eslNumber, discount;
                            double calculate;
                            aasPrice = 120;
                            eslPrice = 75;
                            aasNumber = Integer.parseInt(request.getParameter("aasTextBox"));
                            eslNumber = Integer.parseInt(request.getParameter("eslTextBox"));
                            discount = Integer.parseInt(request.getParameter("discountRateSelectBox"));
                            calculate = ((aasNumber*aasPrice)+(eslNumber*eslPrice))*(100-discount)/100;
                            
                            DecimalFormat df = new DecimalFormat("#,###,##0.00");
                           

                            //Start : Currency Exchange Calculate
                            calculate = ((aasNumber*aasPrice)+(eslNumber*eslPrice))*(100-discount)/100;
                            //Fininsh : Currency Exchange Calculate    
%>
        <div align="center">
           <h4>Your tuition is : RM <%= calculate %></h4>    
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
                        <iframe src="sourcecode/tuition.txt" width="100%" height="100%"></iframe>                                       

                </div>
        </div>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>
