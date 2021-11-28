<?php
  session_start(); 
  include('outconfig.php');

  if(isset($_POST['submit'])){
    
  //personal details
    $PName = $_POST['pname'];
    $DName = $_POST['drname'];
    $Gender = $_POST['gender'];
    $Age = $_POST['age'];
    $MobNo = $_POST['mobile'];
    $LandlineNo = $_POST['landline'];

    $Email = $_POST['email'];
    $UHID = $_POST['uhid'];
    $Date=$_POST['date'];

  //Reception Experience
    $One = $_POST['one'];
    $Two = $_POST['two'];
  //Registration Experience
    $Three = $_POST['three'];
    $Four = $_POST['four'];
    $Five = $_POST['five'];
  //consultation and nursing Exp
    $Six = $_POST['six'];
    $Seven = $_POST['seven'];
  //Diagnostic and Ancillary Services
    $Nine = $_POST['nine'];
    $Ten = $_POST['ten'];
    $Eleven = $_POST['eleven'];
    //overall exp
       $Twelve = $_POST['twelve'];
       
       $Thirteen = $_POST['thirteen'];
       $Fourteen = $_POST['fourteen'];


    $Team_member=$_POST['team_member'];
    $OtherFeedback=$_POST['otherfeedback'];
     

    $checkbox1=$_POST['filled'];  
    $chk="";  
     foreach($checkbox1 as $chk1)  
   {  
      $chk .= $chk1.",";  
   } 
    $Relation=$_POST['relation'];

    //Reason
    $v = $_POST['v'];
    $Other=$_POST['other'];


    $query=mysqli_query($con,"insert into Personal_details (PatientName,DoctorName,UHID_No,Gender,Age,MobileNo,LandlineNo,Emailid,Date) values('$PName','$DName','$UHID','$Gender','$Age','$MobNo','$LandlineNo','$Email','$Date')");
    $pos = mysqli_query($con,"select ID from Personal_details where UHID_No='$UHID' ORDER BY ID DESC LIMIT 1");
    $posresult = mysqli_fetch_assoc($pos);
    $posres =  $posresult['ID'];


    $query1 = mysqli_query($con,"insert into Reception_Experience values('$posres','$One','$Two')");
    $query2 = mysqli_query($con,"insert into Registration_Experience values('$posres','$Three','$Four','$Five')");
    $query3 = mysqli_query($con,"insert into Consultation_and_Nursing_Experience values('$posres','$Six','$Seven')");
    $query4 = mysqli_query($con,"insert into Diagnostic_and_Ancillary_Services values('$posres','$Nine','$Ten','$Eleven')");
  
    $query5 = mysqli_query($con,"insert into  Overall_Experience values('$posres','$Twelve','$Thirteen','$Fourteen','$Team_member','$OtherFeedback','$chk','$Relation')");

    $query6=mysqli_query($con,"insert into Reason (ID) values('$posres')");

      for($u=0; $u < count($v); $u++){

            $temp = $v[$u];

            if($temp == "Location"){
                $sql ="update Reason set Location='Yes' where ID='$posres'";
            }
            if($temp == "Specific Services offered"){
                   $sql ="update Reason set Specific_Services_offered ='Yes' where ID='$posres'";
            }
            if($temp == "Referred by doctor"){
                   $sql ="update Reason set Referred_by_doctor ='Yes' where ID='$posres'";
            }
            if($temp == "Friend / Family Recommendation"){
                 $sql ="update Reason set Friend_Family_Recommendation='Yes' where ID='$posres'";
            }
            if($temp == "Previous Experience"){
                 $sql ="update Reason set Previous_Experience='Yes' where ID='$posres'";
            }
            if($temp == "Your Doctor's Availability"){
                   $sql ="update Reason set Your_Doctor_Availability='Yes' where ID='$posres'";
            }
            if($temp == "Company Recommendation"){
                 $sql ="update Reason set Company_Recommendation='Yes' where ID='$posres'";
            }
     
            $query10 = mysqli_query($con, $sql);
    }


 $sql7 ="update Reason set Other='$Other' where ID='$posres'";

   $query7 = mysqli_query($con, $sql7);




   


  
}





  ?>












<!DOCTYPE html>
<html lang="en">

<head>


    <style type="text/css">
      th, td {
      width: 14%;
      padding: 10px 0;
      border-bottom: 1px solid #ccc;
      text-align: center;
      vertical-align: unset;
      line-height: 18px;
      font-weight: 400;
      word-break: break-all;
      }</style>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   

    
    <title>Out Patient Feedback Form</title>

    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    
    
     <link rel="stylesheet" type="text/css" href="opf.css">

</head>

<body>
     <header style="background-color:white">
     <img  src="https://www.sagarhospitals.in/wp-content/uploads/2019/07/logo.png" data-src="https://www.sagarhospitals.in/wp-content/uploads/2019/07/logo.png" alt="" style="max-width: 100%; height: auto; margin:2.5%;margin-top:0.5%;">
    </header>
   
    <div class="page-wrapper bg-dark p-t-20 p-b-50">
        
        <div class="wrapper wrapper--w900">
              
            <div class="card card-6">
                <div class="card-heading">

                    <h2 class="title">Out Patient Feedback Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row">
                            <div class="name" style="margin-top: 15px"> Patient Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="pname" required>
                            </div>
                                <div class="name" style="margin-top: 15px">Doctor Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="drname" required>
                            </div>

                              <div class="name" style="margin-top: 15px">Date</div>
                            <div class="value">
                                <input class="input--style-6" type="date" name="date" required>
                            </div>
                           <div class="name" style="margin-top: 15px"> UHID Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="uhid" required>
                            </div>
                                <div class="name" style="margin-top: 15px">Male/Female</div>
                              <div class="value">
                                <select class="input--style-6" style="margin-top: 2px; width:165px; height:38px;" name="gender" id="gender">
                                  <option class="input--style-6" value="male">Male</option>
                                  <option class="input--style-6" value="female">Female</option>
                                  </select>
                            </div>

                            <div class="name" style="margin-top: 15px">Age&nbsp&nbsp&nbsp</div>
                            <div class="value">
                                <input class="input--style-6" type="number" name="age" required>
                            </div>

                            <div class="name" style="margin-top: 15px">Mobile No.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</div><br>

                                <div class="value"><input class="input--style-6" type="text" name="mobile" required></div>

                
                                <div class="name" style="margin-top: 15px">Landline No .</div><br>

                                <div class="value"><input class="input--style-6" type="text" name="landline" required></div>

                              <div class="name" style="margin-top: 15px">Email</div><br>

                                <div class="value"><input class="input--style-6" type="email" name="email" required></div>
                               </div>

<div class="form-row">Dear Guest, <br>Thank you for choosing Sagar Hospitals.We at Sagar,constantly strive to match our services to the expectations of our customers.We are committed to provide world class health to all.To help us serve you better,please spare a few minutes to record your impressions of our hospital services.Your opinion is of immense value to us.</div> 
<div class="form-row"> Please give us your valuable feedback on the various touch points while you were with us.</div>
<div class="form-row">
    <table style="width: 100%">
           <thead>
              <tr>
                <th></th>
                <th ><b>Excellent</b></th>
                <th ><b>Very good</b></th>
                <th ><b>Good</b></th>
                <th  ><b>Average</b></th>
                <th  ><b>Poor</b></th>
              </tr>
            </thead>
            <tbody>
              <tr><tr>

                <tr><th colspan="6" style="text-align:left;"><b>Reception Experience</b></th></tr>
                <td class="first-col">1.Helpfulness of Staff</td>
                <td><input type="radio" value="Excellent" name="one" required/></td>
                <td><input type="radio" value="Very good" name="one" required/></td>
                <td><input type="radio" value="Good" name="one" required/></td>
                <td><input type="radio" value="Average" name="one" required/></td>
                <td><input type="radio" value="Poor" name="one" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Courtesy and Compassion of the Guest Relations Executives</td>
                <td><input type="radio" value="Excellent" name="two" required/></td>
                <td><input type="radio" value="Very good" name="two" required/></td>
                <td><input type="radio" value="Good" name="two" required/></td>
                <td><input type="radio" value="Average" name="two" required/></td>
                <td><input type="radio" value="Poor" name="two" required/></td>
              </tr>
              


                <tr><th colspan="6" style="text-align:left;"><b>Registration Experience</b></th></tr>
               <tr> 
                <td class="first-col">3.Efficiency of the registration process</td>
                <td><input type="radio" value="Excellent" name="three" required/></td>
                <td><input type="radio" value="Very good" name="three" required/></td>
                <td><input type="radio" value="Good" name="three" required/></td>
                <td><input type="radio" value="Average" name="three" required/></td>
                <td><input type="radio" value="Poor" name="three" required/></td>
              </tr>
              <tr>
                <td class="first-col">4.Courtesy and Compassion of the Guest Relations Executives</td>
                <td><input type="radio" value="Excellent" name="four" required/></td>
                <td><input type="radio" value="Very good" name="four" required/></td>
                <td><input type="radio" value="Good" name="four" required/></td>
                <td><input type="radio" value="Average" name="four" required/></td>
                <td><input type="radio" value="Poor" name="four" required/></td>
              </tr>
              <tr>
                <td class="first-col">5.Waiting time for consultation</td>
                <td><input type="radio" value="Excellent" name="five" required/></td>
                <td><input type="radio" value="Very good" name="five" required/></td>
                <td><input type="radio" value="Good" name="five" required/></td>
                <td><input type="radio" value="Average" name="five" required/></td>
                <td><input type="radio" value="Poor" name="five" required/></td>
              </tr>

              
                <tr><th colspan="6" style="text-align:left"><b>Consultation & Nursing Experience</b></th></tr>
                <td class="first-col">6.Communication about your condition by the Doctor</td>
                <td><input type="radio" value="Excellent" name="six" required/></td>
                <td><input type="radio" value="Very good" name="six" required/></td>
                <td><input type="radio" value="Good" name="six" required/></td>
                <td><input type="radio" value="Average" name="six" required/></td>
                <td><input type="radio" value="Poor" name="six" required/></td>
              </tr>
              <tr>
                <td class="first-col">7.Courtesy and Compassion of Nursing staff</td>
                <td><input type="radio" value="Excellent" name="seven" required/></td>
                <td><input type="radio" value="Very good" name="seven" required/></td>
                <td><input type="radio" value="Good" name="seven" required/></td>
                <td><input type="radio" value="Average" name="seven" required/></td>
                <td><input type="radio" value="Poor" name="seven" required/></td>
              </tr>
              
            </tbody>
          </table>








         <table style="width: 100%">
           <thead>
              <tr>
                <th></th>
                <th ><b>Excellent</b></th>
                <th ><b>Very good</b></th>
                <th ><b>Good</b></th>
                <th  ><b>Fair</b></th>
                <th  ><b>Poor</b></th>
              </tr>
            </thead>
            <tbody>
              <tr>

                <th colspan="6" style="text-align:left"><b>Diagnostic and Ancillary Services</b></th></tr>
              <tr>
                <td class="first-col">8.Lab services</td>
                <td><input type="radio" value="Excellent" name="nine" required/></td>
                <td><input type="radio" value="Very good" name="nine" required/></td>
                <td><input type="radio" value="Good" name="nine" required/></td>
                <td><input type="radio" value="Fair" name="nine" required/></td>
                <td><input type="radio" value="Poor" name="nine" required/></td>
              </tr>
                 <tr>
                <td class="first-col">9.Radiology services</td>
                <td><input type="radio" value="Excellent" name="ten" required/></td>
                <td><input type="radio" value="Very good" name="ten" required/></td>
                <td><input type="radio" value="Good" name="ten" required/></td>
                <td><input type="radio" value="Fair" name="ten" required/></td>
                <td><input type="radio" value="Poor" name="ten" required/></td>
              </tr>
                 <tr>
                <td class="first-col">10.Pharmacy services</td>
                <td><input type="radio" value="Excellent" name="eleven" required/></td>
                <td><input type="radio" value="Very good" name="eleven" required/></td>
                <td><input type="radio" value="Good" name="eleven" required/></td>
                <td><input type="radio" value="Fair" name="eleven" required/></td>
                <td><input type="radio" value="Poor" name="eleven" required/></td>
              </tr>

                 <tr>
                <td class="first-col"><p style=" font-weight: bold;">Overall Experience</p>Overall Experience at Sagar Hospitals</td>
                <td><input type="radio" value="Excellent" name="twelve" required/></td>
                <td><input type="radio" value="Very good" name="twelve" required/></td>
                <td><input type="radio" value="Good" name="twelve" required/></td>
                <td><input type="radio" value="Fair" name="twelve" required/></td>
                <td><input type="radio" value="Poor" name="twelve" required/></td>
              </tr>

              
            </tbody>
          </table>



            




         <table style="width: 100%">
           <thead>
              <tr>
                <th></th>
                <th ><b>Definitely will</b></th>
                <th ><b>May be</b></th>
                <th ><b>Neutral</b></th>
                <th  ><b>May be not</b></th>
                <th  ><b>Definitely not</b></th>
              </tr>
            </thead>
            <tbody>
              <tr><tr>

                
                <td class="first-col">Would you continue to choose Sagar Hospitals for your future needs? </td>
                <td><input type="radio" value="Definately will" name="thirteen" required/></td>
                <td><input type="radio" value="May be" name="thirteen" required/></td>
                <td><input type="radio" value="Neutral" name="thirteen" required/></td>
                <td><input type="radio" value="May be not" name="thirteen" required/></td>
                <td><input type="radio" value="Definately not" name="thirteen" required/></td>
              </tr>
              <tr>
                <td class="first-col">Would you recommend Sagar Hospitals to your friends or family members? </td>
                <td><input type="radio" value="Definately will" name="fourteen" required/></td>
                <td><input type="radio" value="May be" name="fourteen" required/></td>
                <td><input type="radio" value="Neutral" name="fourteen" required/></td>
                <td><input type="radio" value="May be not" name="fourteen" required/></td>
                <td><input type="radio" value="Definately not" name="fourteen" required/></td>
              </tr>
         

              
            </tbody>
          </table>
    </div>

<div class="form-row">
    
    <b>Your reason for choosing Sagar Hospitals.</b>
  <div class = "container">
  <div class="row">
    <div class="col-12">
    </div>
  </div><br>
  <div class="row">
    <div class="col-12">
         <ul>
        
       <li>
          <label class="container">a. Location
            <input type="checkbox" name="v[]" value="Location">
            <span class="checkmark"></span>
          </label>
       </li>

       <li>
          <label class="container">b. Specific Services offered
            <input type="checkbox"   name="v[]" value="Specific Services offered">
            <span class="checkmark"></span>
          </label>
       </li>


       <li>
          <label class="container">c. Referred by doctor
            <input type="checkbox"  name="v[]" value="Referred by doctor">
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">d. Friend / Family Recommendation
            <input type="checkbox" name="v[]" value="Friend / Family Recommendation">
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">e. Previous Experience
            <input type="checkbox" name="v[]" value="Previous Experience">
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">f. Your Doctor's Availability
            <input type="checkbox" name="v[]" value="Your Doctor's Availability">
            <span class="checkmark"></span>
          </label>
       </li>
        
        <li>
          <label class="container contain">g. Company Recommendation
            <input type="checkbox" name="v[]" value="Company Recommendation">
            <span class="checkmark"></span>
          </label>
       </li>
          
        </ul>
    </div>


  </div>


</div>
 

<div>Others (Please specify):<input type="text" name="other" id="other" class="input--style-6" style="max-width: 50%;margin-left: 10px"></div>


</div>

<div >
    <div class="name" style="margin-top: 15px ;margin-left:10px;margin-bottom: 2px;">Please help us recognize a team member who may have performed services beyond your expectations</div>
    <div class="value">
    <textarea  name="team_member" class="textarea--style-6 "style="
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;

    max-width: 100%;
}" required></textarea>
    </div>
</div>
<div style="border-bottom: 5px solid #e5e5e5;margin-top: 10px "></div>

<div >
    <div class="name" style="margin-top: 15px; margin-left:10px">Would you like to provide any other feedback or suggestion which would help us deliver better
    experience</div>
    <div class="value">
    <textarea  name="otherfeedback"  class="textarea--style-6 "style="
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;

    max-width: 100%;
}" required></textarea>
    </div>
</div>
<div style="border-bottom: 5px solid #e5e5e5; margin-top: 10px;margin-bottom: 10px"></div>
  









   <div style="margin:10px"> <p>Feed Back Form Filled by:</p>
  <div>
  <div class="row">
    <div class="col-12">
    </div>
  </div>
  <div class="row">
    <div class="col-12">
      <ul>
        
       <li>
          <label class="container"> Self
            <input type="checkbox" name="filled[]" value="Self">
            <span class="checkmark"></span>
          </label>
       </li>

       <li>
          <label class="container"> Attendent
            <input type="checkbox" name="filled[]" value="Attendent" >
            <span class="checkmark"></span>
          </label>
       </li>
   
    
    
       </ul>


    </div>

</div>
Relationship to the Patient (in case of Attendent)<input name="relation" type="text" class="input--style-6" style="max-width: 50%;margin-left: 10px"></div>
<div style="border-bottom: 5px solid #e5e5e5; margin-top: 10px" ></div>
<center style="font-weight: bold; margin-top: 10px">Thank you for sharing your experience</center>




                </div>
                <div class="card-footer">
                  <center>  <input class="btn btn--radius-2 btn--red" type="submit" name="submit">Send Feedback</input></center>
                </div>
            </div>
        </div>
</div>

 
</form>
</body>

</html>
