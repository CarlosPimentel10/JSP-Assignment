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
                        <h1 class="brand-name">Grade Calculator</h1>
                    </div>
                    <div class="col-lg-6 text-center">
                        <img src="img/gred.jpg" alt="" width="100%" />
                    </div>
                </div>
            </div>



            <div class="row">
                <div class="box">
                    <div class="col-lg-6">
                        <hr>
                            <h2 class="intro-text text-center">Question 5 :
                                <strong>Grade Calculator</strong>
                            </h2>
                        <hr>

                        <hr class="visible-xs">
                        <p>Develop a program receive midterm (30%), final (30%) and project (40%) marks then calculate and displays the results. Which result can be:</p>
                        <p>Average mark<br>
                           Grade: A, B, C, D, F<br>
                           Point: 4, 3, 2, 1, 0<br>
                           Result: <br>
                           &nbsp;&nbsp;&nbsp;Average >= 60 : pass<br>
                           &nbsp;&nbsp;&nbsp;Average < 60 : fail</p>
                            

                    </div>
                    <div class="col-lg-6">
                        <hr>
                        <h2 class="intro-text text-center">Answer :<strong> Grade Calculator</strong></h2>
                        <hr>
                        <hr class="visible-xs">
                        <div align="center">
                            <div style="background-color:red; color:white; font-weight:bold; " align="center">MARK CONVERTER</div><br>
                            <form action="gred.jsp" method="POST">
                                <p>Midterm :&nbsp;<input type="text" name="midTermTextBox" id="midTermTextBox">(30%)</p>
                                <p>Final &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<input type="text" name="finalTextBox" id="finalTextBox">(30%)</p>
                                <p>Project&nbsp;&nbsp;&nbsp; :&nbsp;<input type="text" name="projectTextBox" id="projectTextBox">(40%)</p>
                                <p align="center"><input type="submit" value="Get Result" name="getResultButton" /></p>
                            </form>
                        </div>

                        <%
                            String semakMidterm = request.getParameter("midTermTextBox");
                            String semakFinal = request.getParameter("finalTextBox");
                            String semakProject = request.getParameter("projectTextBox");
                        
                        if (semakMidterm == null && semakFinal == null && semakProject == null )
                        {%>
                            <div align="center"><h4>You can Enter all your mark to calculate result</h4></div>
                     <% } else if (semakMidterm.length() == 0 || semakFinal.length() == 0 || semakProject.length() == 0) {  %>
                           <div align="center"><h4>Please fill up all mark</h4></div>
                    <% }else {
                        
                            double midterm = Double.parseDouble(request.getParameter("midTermTextBox"));
                            double finalr = Double.parseDouble(request.getParameter("finalTextBox"));
                            double project = Double.parseDouble(request.getParameter("projectTextBox"));
                            double total = midterm + finalr + project;

                            double carryMidterm = midterm/100*30;
                            double carryFinalr = finalr/100*30;
                            double carryProject = project/100*40;

                            double average = carryMidterm + carryFinalr + carryProject;
                        
                            //Start : Gred Calculator
                            String point;
                            if (average>100)
                                point = "invalid range";
                            else if(average >= 90)
                                point = "4";
                            else if(average >=80)
                                point = "3";
                            else if (average >=70)
                                point = "2";
                            else if (average >=60)
                                point = "1";
                            else point = "0";

                            String grade;
                            if (average>100)
                                grade = "invalid range";
                            else if(average >= 90)
                                grade = "A";
                            else if(average >=80)
                                grade = "B";
                            else if (average >=70)
                                grade = "C";
                            else if (average >=60)
                                grade = "D";
                            else grade = "E";

                            String result = null;
                            if (average>100)
                                result = "invalid range";
                            else if(average >= 60)
                                result = "Pass";
                            else if(average < 60)
                                result = "Fail";
                            //Finish : Gred Calculator    
                        %>
                                <div align="center">
                                   <h4>Average : <%= average %></h4>
                                   <h4>Grade : <%= grade %></h4>
                                   <h4>Point : <%= point %></h4>
                                   <h4>Result : <%= result %></h4>
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
                        <iframe src="sourcecode/gred.txt" width="100%" height="100%"></iframe>                                       

                </div>
        </div>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>
