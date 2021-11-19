<?php
  
  include('config.php')

  if(isset($_POST['submit']))
  {
    $PName = $_POST['PName']
    $DName = $_POST['DName']
    $Gender = $_POST['Gender']
    $Age = $_POST['Age']
    $MobNo = $_POST['MobNo']
    $Email = $_POST['Email']
    $UHID = $_POST['UHID']

    $One = $_POST['one']
    $Two = $_POST['Two']

    //Nursing
    $Three = $_POST['Three']
    $Four = $_POST['Four']
    $Five = $_POST['Five']

    //Dietary   
    $Six = $_POST['Six']
    $Seven = $_POST['Seven']
    $Eight = $_POST['Eight']

    //Doc & Room
    $Nine = $_POST['Nine']
    $Ten = $_POST['Ten']
    $Eleven = $_POST['Eleven']
    $Twelve = $_POST['Twelve']

    //patient Care
    $Thirteen = $_POST['Thirteen']
    $Fourteen = $_POST['Fourteen']

    //Diagnostic
    $Fiveteen = $_POST['Fifteen']
    $Sixteen = $_POST['Sixteen']
    $Seventeen = $_POST['Seventeen']
    $Eighteen = $_POST['Eighteen']
    $Nineteen = $_POST['Nineteen']

    //Billing
    $Twenty = $_POST['Twenty']
    $Twentyone = $_POST['Twentyone']

    //Security
    $Twentytwo = $_POST['Twentytwo']
    $Twentythree = $_POST['Twentythree']
    $Twentyfour = $_POST['Twentyfour']
    $Twentyfive = $_POST['Twentyfive']


    $query=mysqli_query($con,"insert into patient(name,	gender,	age,	symp,	report) values('$PName','$DName',$Gender', $Age,'$Mobno','$Email','$UHID')");
    
    $pos = mysqli_query($con,"select id from patient where UHID='$UHID' ORDER BY id DESC LIMIT 1");
    $posresult = mysqli_fetch_assoc($pos);
    $posres =  $posresult['id'];


    $query1 = mysqli_query($con,"insert into admission('$posres','$one','$two')");
    $query2 = mysqli_query($con,"insert into nursing('$posres','$three','$four','$five')");
    $query3 = mysqli_query($con,"insert into Dietary('$posres','$six','$seven','$eight')");
    $query4 = mysqli_query($con,"insert into Doc('$posres','$nine','$ten','$eleven','$twelve')");
    $query5 = mysqli_query($con,"insert into PatientCare('$posres','$thirteen','$fourteen')");
    $query6 = mysqli_query($con,"insert into Diagnostic('$posres','$Fifteen','$sixteen','$seventeen','$eighteen','$nineteen')");
    $query7 = mysqli_query($con,"insert into Billing('$posres','$twenty','$twentyone')");
    $query8 = mysqli_query($con,"insert into security('$posres','$twentytwo','$twentythree','$twentyfour','$twentyfive')");
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
   

    
    <title>In Patient Feedback Form</title>

    
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

                    <h2 class="title">In Patient Feedback Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row">
                            <div class="name" style="margin-top: 15px"> Patient Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="pname">
                            </div>
                                <div class="name" style="margin-top: 15px">Doctor Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="drname">
                            </div>

                              <div class="name" style="margin-top: 15px">Date</div>
                            <div class="value">
                                <input class="input--style-6" type="date" name="date">
                            </div>
                           <div class="name" style="margin-top: 15px;"> UHID Number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="uhid">
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
                                <input class="input--style-6" type="number" name="age">
                            </div>

                            <div class="name" style="margin-top: 15px">Mobile No.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</div><br>

                                <div class="value"><input class="input--style-6" type="text" name="mobile"></div>

                
                                <div class="name" style="margin-top: 15px">Landline No .</div><br>

                                <div class="value"><input class="input--style-6" type="text" name="landline"></div>

                              <div class="name" style="margin-top: 15px">Email</div><br>

                                <div class="value"><input class="input--style-6" type="email" name="email"></div>
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

                <tr><th colspan="6" style="text-align:left;"><b>Admission Experience</b></th></tr>
                <td class="first-col">1.How convenient was the </br>admission process</td>
                <td><input type="radio" value="None" name="one" required/></td>
                <td><input type="radio" value="None" name="one" required/></td>
                <td><input type="radio" value="None" name="one" required/></td>
                <td><input type="radio" value="None" name="one" required/></td>
                <td><input type="radio" value="None" name="one" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Courtesy and Compassion of the admission staff</td>
                <td><input type="radio" value="None" name="two" required/></td>
                <td><input type="radio" value="None" name="two" required/></td>
                <td><input type="radio" value="None" name="two" required/></td>
                <td><input type="radio" value="None" name="two" required/></td>
                <td><input type="radio" value="None" name="two" required/></td>
              </tr>
              


                <tr><th colspan="6" style="text-align:left;"><b>Nursing Experience</b></th></tr>
               <tr> 
                <td class="first-col">1.Promptness in response</td>
                <td><input type="radio" value="None" name="three" required/></td>
                <td><input type="radio" value="None" name="three" required/></td>
                <td><input type="radio" value="None" name="three" required/></td>
                <td><input type="radio" value="None" name="three" required/></td>
                <td><input type="radio" value="None" name="three" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Efficiency of service</td>
                <td><input type="radio" value="None" name="four" required/></td>
                <td><input type="radio" value="None" name="four" required/></td>
                <td><input type="radio" value="None" name="four" required/></td>
                <td><input type="radio" value="None" name="four" required/></td>
                <td><input type="radio" value="None" name="four" required/></td>
              </tr>
              <tr>
                <td class="first-col">3.Courtesy and Compassion of the nursing staff</td>
                <td><input type="radio" value="None" name="five" required/></td>
                <td><input type="radio" value="None" name="five" required/></td>
                <td><input type="radio" value="None" name="five" required/></td>
                <td><input type="radio" value="None" name="five" required/></td>
                <td><input type="radio" value="None" name="five" required/></td>
              </tr>

              
                <tr><th colspan="6" style="text-align:left"><b>Dietary services</b></th></tr>
                <td class="first-col">1.The overall quality of food</td>
                <td><input type="radio" value="None" name="six" required/></td>
                <td><input type="radio" value="None" name="six" required/></td>
                <td><input type="radio" value="None" name="six" required/></td>
                <td><input type="radio" value="None" name="six" required/></td>
                <td><input type="radio" value="None" name="six" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Timeliness of service</td>
                <td><input type="radio" value="None" name="seven" required/></td>
                <td><input type="radio" value="None" name="seven" required/></td>
                <td><input type="radio" value="None" name="seven" required/></td>
                <td><input type="radio" value="None" name="seven" required/></td>
                <td><input type="radio" value="None" name="seven" required/></td>
              </tr>
              <tr>
                <td class="first-col">3.Counselling and guidance by the dietician</td>
                <td><input type="radio" value="None" name="eight" required/></td>
                <td><input type="radio" value="None" name="eight" required/></td>
                <td><input type="radio" value="None" name="eight" required/></td>
                <td><input type="radio" value="None" name="eight" required/></td>
                <td><input type="radio" value="None" name="eight" required/></td>
              </tr>

              <tr>
                <td class="first-col"><p style=" font-weight: bold;">Doctors Experience</p>Communication about your condition and treatment by the doctor</td>
                <td><input type="radio" value="None" name="nine" required/></td>
                <td><input type="radio" value="None" name="nine" required/></td>
                <td><input type="radio" value="None" name="nine" required/></td>
                <td><input type="radio" value="None" name="nine" required/></td>
                <td><input type="radio" value="None" name="nine" required/></td>
              </tr>

              <tr><th colspan="6" style="text-align:left;"><b>In Room Experience</b></th></tr>
                <td class="first-col">1.Room readiness </td>
                <td><input type="radio" value="None" name="ten" required/></td>
                <td><input type="radio" value="None" name="ten" required/></td>
                <td><input type="radio" value="None" name="ten" required/></td>
                <td><input type="radio" value="None" name="ten" required/></td>
                <td><input type="radio" value="None" name="ten" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Ambience & Upkeep of the room</td>
                <td><input type="radio" value="None" name="eleven" required/></td>
                <td><input type="radio" value="None" name="eleven" required/></td>
                <td><input type="radio" value="None" name="eleven" required/></td>
                <td><input type="radio" value="None" name="eleven" required/></td>
                <td><input type="radio" value="None" name="eleven" required/></td>
              </tr>
              <tr>
                <td class="first-col">3.Regular cleaning of rooms & toilets</td>
                <td><input type="radio" value="None" name="twelve" required/></td>
                <td><input type="radio" value="None" name="twelve" required/></td>
                <td><input type="radio" value="None" name="twelve" required/></td>
                <td><input type="radio" value="None" name="twelve" required/></td>
                <td><input type="radio" value="None" name="twelve" required/></td>
              </tr>


              <tr><th colspan="6" style="text-align:left;"><b>Patient Care Services</b></th></tr>
                <td class="first-col">1.Courtesy and compassion of Patient Co-ordinator </td>
                <td><input type="radio" value="None" name="thirteen" required/></td>
                <td><input type="radio" value="None" name="thirteen" required/></td>
                <td><input type="radio" value="None" name="thirteen" required/></td>
                <td><input type="radio" value="None" name="thirteen" required/></td>
                <td><input type="radio" value="None" name="thirteen" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Communication and handling of discharge process</td>
                <td><input type="radio" value="None" name="fourteen" required/></td>
                <td><input type="radio" value="None" name="fourteen" required/></td>
                <td><input type="radio" value="None" name="fourteen" required/></td>
                <td><input type="radio" value="None" name="fourteen" required/></td>
                <td><input type="radio" value="None" name="fourteen" required/></td>
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
                <td class="first-col">1.Services in Emergency room</td>
                <td><input type="radio" value="None" name="fifteen" required/></td>
                <td><input type="radio" value="None" name="fifteen" required/></td>
                <td><input type="radio" value="None" name="fifteen" required/></td>
                <td><input type="radio" value="None" name="fifteen" required/></td>
                <td><input type="radio" value="None" name="fifteen" required/></td>
              </tr>
                 <tr>
                <td class="first-col">2.Services in Radiology</td>
                <td><input type="radio" value="None" name="sixteen" required/></td>
                <td><input type="radio" value="None" name="sixteen" required/></td>
                <td><input type="radio" value="None" name="sixteen" required/></td>
                <td><input type="radio" value="None" name="sixteen" required/></td>
                <td><input type="radio" value="None" name="sixteen" required/></td>
              </tr>
                 <tr>
                <td class="first-col">3.Service in Laboratory</td>
                <td><input type="radio" value="None" name="seventeen" required/></td>
                <td><input type="radio" value="None" name="seventeen" required/></td>
                <td><input type="radio" value="None" name="seventeen" required/></td>
                <td><input type="radio" value="None" name="seventeen" required/></td>
                <td><input type="radio" value="None" name="seventeen" required/></td>
              </tr>
              <tr>
                <td class="first-col">4.Internal Transport services <br>(Wheelchairs and stretchers)</td>
                <td><input type="radio" value="None" name="eighteen" required/></td>
                <td><input type="radio" value="None" name="eighteen" required/></td>
                <td><input type="radio" value="None" name="eighteen" required/></td>
                <td><input type="radio" value="None" name="eighteen" required/></td>
                <td><input type="radio" value="None" name="eighteen" required/></td>
              </tr>
              <tr>
                <td class="first-col">5.Ambulance Services</td>
                <td><input type="radio" value="None" name="nineteen" required/></td>
                <td><input type="radio" value="None" name="nineteen" required/></td>
                <td><input type="radio" value="None" name="nineteen" required/></td>
                <td><input type="radio" value="None" name="nineteen" required/></td>
                <td><input type="radio" value="None" name="nineteen" required/></td>
              </tr>

              <tr><th colspan="6" style="text-align:left;"><b>Billing & Discharge Process</b></th></tr>
                <td class="first-col">1.Speed of the discharge process</td>
                <td><input type="radio" value="None" name="twenty" required/></td>
                <td><input type="radio" value="None" name="twenty" required/></td>
                <td><input type="radio" value="None" name="twenty" required/></td>
                <td><input type="radio" value="None" name="twenty" required/></td>
                <td><input type="radio" value="None" name="twenty" required/></td>
              </tr>
              <tr>
                <td class="first-col">2.Communication and handling of queries</td>
                <td><input type="radio" value="None" name="twentyone" required/></td>
                <td><input type="radio" value="None" name="twentyone" required/></td>
                <td><input type="radio" value="None" name="twentyone" required/></td>
                <td><input type="radio" value="None" name="twentyone" required/></td>
                <td><input type="radio" value="None" name="twentyone" required/></td>
              </tr>

              <tr>
                <td class="first-col"><p style=" font-weight: bold;">Security Experience</p>Helpfulness of the security staff</td>
                <td><input type="radio" value="None" name="twentytwo" required/></td>
                <td><input type="radio" value="None" name="twentytwo" required/></td>
                <td><input type="radio" value="None" name="twentytwo" required/></td>
                <td><input type="radio" value="None" name="twentytwo" required/></td>
                <td><input type="radio" value="None" name="twentytwo" required/></td>
              </tr>

                 <tr>
                <td class="first-col"><p style=" font-weight: bold;">Overall Experience</p>Overall Experience at Sagar Hospitals</td>
                <td><input type="radio" value="None" name="twentythree" required/></td>
                <td><input type="radio" value="None" name="twentythree" required/></td>
                <td><input type="radio" value="None" name="twentythree" required/></td>
                <td><input type="radio" value="None" name="twentythree" required/></td>
                <td><input type="radio" value="None" name="twentythree" required/></td>
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
                <td><input type="radio" value="None" name="twentyfour" required/></td>
                <td><input type="radio" value="None" name="twentyfour" required/></td>
                <td><input type="radio" value="None" name="twentyfour" required/></td>
                <td><input type="radio" value="None" name="twentyfour" required/></td>
                <td><input type="radio" value="None" name="twentyfour" required/></td>
              </tr>
              <tr>
                <td class="first-col">Would you recommend Sagar Hospitals to your friends or family members? </td>
                <td><input type="radio" value="None" name="twentyfive" required/></td>
                <td><input type="radio" value="None" name="twentyfive" required/></td>
                <td><input type="radio" value="None" name="twentyfive" required/></td>
                <td><input type="radio" value="None" name="twentyfive" required/></td>
                <td><input type="radio" value="None" name="twentyfive" required/></td>
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
            <input type="checkbox" >
            <span class="checkmark"></span>
          </label>
       </li>

       <li>
          <label class="container">b. Specific Services offered
            <input type="checkbox" >
            <span class="checkmark"></span>
          </label>
       </li>


       <li>
          <label class="container">c. Referred by doctor
            <input type="checkbox" >
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">d. Friend / Family Recommendation
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">e. Previous Experience
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
       </li>
        
       <li>
          <label class="container">f. Your Doctor's Availability
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
       </li>
        
        <li>
          <label class="container contain">g. Company Recommendation
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
       </li>
          
        
       
        
       </ul>


    </div>


  </div>


</div>
 



</div>

<div >
    <div class="name" style="margin-top: 15px ;margin-left:10px;margin-bottom: 2px;">Please help us recognize a team member who may have performed services beyond your expectations</div>
    <div class="value">
    <textarea class="textarea--style-6 "style="
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    max-width: 100%;
}" ></textarea>
    </div>
</div>
<div style="border-bottom: 5px solid #e5e5e5;margin-top: 10px "></div>

<div >
    <div class="name" style="margin-top: 15px; margin-left:10px">Would you like to provide any other feedback or suggestion which would help us deliver better
    experience</div>
    <div class="value">
    <textarea class="textarea--style-6 "style="
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    max-width: 100%;
}" ></textarea>
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
            <input type="checkbox" >
            <span class="checkmark"></span>
          </label>
       </li>

       <li>
          <label class="container"> Attendent
            <input type="checkbox" >
            <span class="checkmark"></span>
          </label>
       </li>
   
    
    
       </ul>


    </div>

</div>
Relationship to the Patient (in case of Attendent)<input type="text" class="input--style-6" style="max-width: 50%;margin-left: 10px"></div>
<div style="border-bottom: 5px solid #e5e5e5; margin-top: 10px" ></div>
<center style="font-weight: bold; margin-top: 10px">Thank you for sharing your experience</center>


</form>

                </div>
                <div class="card-footer">
                  <center>  <button class="btn btn--radius-2 btn--red" type="submit" >Send Feedback</button></center>
                </div>
            </div>
        </div>
</div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="opFeedback.js"></script>

</body>

</html>