<html>
 <header style="background-color:white">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

     <img  src="https://www.sagarhospitals.in/wp-content/uploads/2019/07/logo.png" data-src="https://www.sagarhospitals.in/wp-content/uploads/2019/07/logo.png" alt="" style="max-width: 100%; height: auto; margin:2.5%;margin-top:0.5%;">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <title>Admin Dashboard</title>
     <style type="text/css"> 

     th{
     	text-align: center;
     	padding-top:  15px;
     	padding-bottom: 15px;
     	padding-right:   20px;
     	padding-left: 20px;
        background-color: #1A5276;
        color:white;
        font-weight: normal;
     }
        td{
     	text-align: center;
     	padding:  15px;
        background-color: ;
        white-space:nowrap;
     }
    

     </style>
    </header>
</html>
<?php 
session_start(); 
// include "inconfig.php";


   if(isset($_POST['submit'])){

    $Inout=$_POST['inout'];
  
    $Branch = $_POST['branch'];

    $Date=$_POST['date'];





 

 if($Inout=='InpatientFeedback'){

   include "inconfig.php";



// SELECT * 
// FROM Personal_details P
// LEFT JOIN Admission_Experience  using(ID)
// LEFT JOIN Nursing_Experience using(ID)
// LEFT JOIN Dietary using(ID)
// LEFT JOIN Doctor_and_Room_Experience using(ID) 
// LEFT JOIN Patient_Care using(ID) 
// LEFT JOIN Diagnostic_and_Ancilliary_Services  using(ID)
// LEFT JOIN Billing_and_Discharge using(ID) 
// LEFT JOIN Reason  using(ID)  
// LEFT JOIN Security_and_Overall_Exp using(ID) 
// where P.Date= '2021-11-09'





$sql ="SELECT * 
FROM Personal_details P
LEFT JOIN Admission_Experience  using(ID)
LEFT JOIN Nursing_Experience using(ID)
LEFT JOIN Dietary using(ID)
LEFT JOIN Doctor_and_Room_Experience using(ID) 
LEFT JOIN Patient_Care using(ID) 
LEFT JOIN Diagnostic_and_Ancilliary_Services  using(ID)
LEFT JOIN Billing_and_Discharge using(ID) 
LEFT JOIN Reason  using(ID)  
LEFT JOIN Security_and_Overall_Exp using(ID) where Pdate='$Date' and Branch='$Branch' ";








$result = mysqli_query($con, $sql);
if( (mysqli_num_rows($result)!= 0) ){
echo "<table border='1'>
<tr>

<th colspan='12'>Personal Details</th>
<th colspan='2'>Admission Experience</th>
<th colspan='3'>Nursing Experience</th>
<th colspan='3'>Dietary services</th>
<th colspan='1'>Doctors Experience</th>
<th colspan='3'>In Room Experience</th>
<th colspan='2'>Patient Care Services</th>

<th colspan='5'>Diagnostic and Ancillary Services</th>
<th colspan='2'>Billing & Discharge Process</th>
<th colspan='8'>Reason</th>
<th colspan='8'>Security and Overall Experience</th>
</tr>

<tr>
<th > ID</th>
<th > Patient Name</th>
<th > Branch</th>
<th > Doctor Name </th>
<th > Speciality </th>
<th > UHID No </th>
<th > Date </th>
<th > Gender </th>
<th > Age </th>
<th > Mobile No</th>
<th > Landline No</th>
<th > Email id</th>


<th > Convenience </th>
<th > Courtesy </th>


<th > Promptness </th>
<th > Efficiency </th>
<th > Courtesy </th>


<th > Food Quality </th>
<th > Timeliness </th>
<th > Counselling </th>

<th > Communication</th>


<th > Room Readiness</th>
<th > Ambience and upkeep</th>
<th > Regular cleaning</th>


<th > Courtesy </th>
<th > Discharge Process</th>

<th > Emergency Room </th>
<th > Radiology </th>
<th > Laboratory </th>
<th > Internal Transport </th>
<th > Ambulance Services </th>


<th > Speed of Discharge</th>
<th > Communication and Query Handling</th>


<th > Location</th>
<th > Specific Services Offered</th>
<th > Referred by Doctor </th>
<th > Friend or Family Recommendation</th>
<th > Previous Experience </th>
<th > Your Doctor Availability </th>
<th > Company Recommendation </th>
<th > Other </th>


<th > Helpfulness</th>
<th > Overall Experience </th>
<th > Choose in Future? </th>
<th > will Recommend?</th>
<th > Team member who performed services beyond Expectations </th>
<th > Other Feedback</th>
<th > Filled By</th>
<th > Relationship of Attendent </th>



</tr>";



while($row = mysqli_fetch_array($result))
{
	echo "<tr>";
	
	echo "<td>" . $row['ID'] . "</td>";
	echo "<td>" . $row['PatientName'] . "</td>";
	echo "<td>" . $row['Branch'] . "</td>";
	echo "<td>" . $row['DoctorName'] . "</td>";
	echo "<td>" . $row['Speciality'] . "</td>"; 
	echo "<td>" . $row['UHID_No'] . "</td>";
	echo "<td>" . $row['Pdate'] . "</td>";
	echo "<td>" . $row['Gender'] . "</td>";
	echo "<td>" . $row['Age'] . "</td>";
    echo "<td>" . $row['MobileNo'] . "</td>";
	echo "<td>" . $row['LandlineNo'] . "</td>";
	echo "<td>" . $row['Emailid'] . "</td>";
	
	echo "<td>" . $row['Convenience'] . "</td>";
	echo "<td>" . $row['Courtesy'] . "</td>"; 
	echo "<td>" . $row['promptness'] . "</td>";
	echo "<td>" . $row['Efficiency'] . "</td>";
	echo "<td>" . $row['courtesy'] . "</td>";
	echo "<td>" . $row['FoodQuality'] . "</td>";
	echo "<td>" . $row['Timeliness'] . "</td>";
	echo "<td>" . $row['Counselling'] . "</td>";
	echo "<td>" . $row['Communication'] . "</td>";
	echo "<td>" . $row['Room_Readiness'] . "</td>";
	echo "<td>" . $row['Ambience_and_upkeep'] . "</td>"; 
	echo "<td>" . $row['Regular_cleaning'] . "</td>";
	echo "<td>" . $row['Courtesy'] . "</td>";
	echo "<td>" . $row['Discharge_Process'] . "</td>";
	echo "<td>" . $row['Emergency_room'] . "</td>";
    echo "<td>" . $row['Radiology'] . "</td>";
	echo "<td>" . $row['Laboratory'] . "</td>";
	echo "<td>" . $row['Internal_transport'] . "</td>";
	echo "<td>" . $row['Ambulance_services'] . "</td>";
	echo "<td>" . $row['Speed_of_discharge'] . "</td>"; 
	echo "<td>" . $row['Communication_and_Query_handling'] . "</td>";
	echo "<td>" . $row['Location'] . "</td>";
	echo "<td>" . $row['Specific_Services_offered'] . "</td>";
	echo "<td>" . $row['Referred_by_doctor'] . "</td>";
	echo "<td>" . $row['Friend_Family_Recommendation'] . "</td>";
	echo "<td>" . $row['Previous_Experience'] . "</td>";
	echo "<td>" . $row['Your_Doctor_Availability'] . "</td>"; 
	echo "<td>" . $row['Company_Recommendation'] . "</td>";
	echo "<td>" . $row['Other'] . "</td>";
	echo "<td>" . $row['Helpfulness'] . "</td>";
	echo "<td>" . $row['Overall_exp'] . "</td>";
	echo "<td>" . $row['choose_in_future'] . "</td>";
	echo "<td>" . $row['Recommend'] . "</td>";
	echo "<td>" . $row['Team_member'] . "</td>";
	echo "<td>" . $row['Other_feedback'] . "</td>";
	echo "<td>" . $row['Filled_by'] . "</td>"; 
	echo "<td>" . $row['Relationship_of_attendent'] . "</td>";

	echo "</tr>";

}

echo "</table>";

}

else{
    echo "<script>alert('Zero Records found ');window.location.href='Admin.html?error=zero records found ';</script>";
	        exit();
}



}

else{

  include "outconfig.php";


$sql ="SELECT * 
FROM Personal_details P
LEFT JOIN Reception_Experience using(ID)
LEFT JOIN Registration_Experience using(ID)
LEFT JOIN Consultation_and_Nursing_Experience using(ID)
LEFT JOIN Diagnostic_and_Ancillary_Services using(ID) 
LEFT JOIN Reason using(ID) 
LEFT JOIN Overall_Experience using(ID)  WHERE Pdate='$Date'   AND Branch='$Branch'";


       




$result = mysqli_query($con, $sql);
if( (mysqli_num_rows($result) != 0) ){
echo "<table border='1'>
<tr>

<th colspan='12'>Personal Details</th>
<th colspan='2'>Reception Experience</th>
<th colspan='3'>Registration Experience</th>
<th colspan='2'>Consultation & Nursing Experience</th>
<th colspan='3'>Diagnostic and Ancillary Services</th>
<th colspan='8'>Reason</th>
<th colspan='7'>Overall Experience</th>


<tr>
<th > ID</th>
<th > Patient Name</th>
<th > Branch</th>
<th > Doctor Name </th>
<th > Speciality </th>
<th > UHID No </th>
<th > Date </th>
<th > Gender </th>
<th > Age </th>
<th > Mobile No</th>
<th > Landline No</th>
<th > Email id</th>


<th > Helpfulness </th>
<th > Courtesy and Compassion </th>


<th > Efficiency </th>
<th > Courtesy and Compassion </th>
<th > Waiting time</th>


<th > Communication </th>
<th > Courtesy and Comapssion </th>
<th > Lab Services </th>
<th > Radiology Services</th>

<th > Pharmacy Services</th>


<th > Location</th>
<th > Specific Services Offered</th>
<th > Referred by Doctor </th>
<th > Friend or Family Recommendation</th>
<th > Previous Experience </th>
<th > Your Doctor Availability </th>
<th > Company Recommendation </th>
<th > Other </th>



<th > Overall Experience </th>
<th > Choose in Future? </th>
<th > will Recommend?</th>
<th > Team member who performed services beyond Expectations </th>
<th > Other Feedback</th>
<th > Filled By</th>
<th > Relationship of Attendent </th>



</tr>";



while($row = mysqli_fetch_array($result))
{
	echo "<tr>";
	
	echo "<td>" . $row['ID'] . "</td>";
	echo "<td>" . $row['PatientName'] . "</td>";
	echo "<td>" . $row['Branch'] . "</td>";
	echo "<td>" . $row['DoctorName'] . "</td>";
	echo "<td>" . $row['Speciality'] . "</td>"; 
	echo "<td>" . $row['UHID_No'] . "</td>";
	echo "<td>" . $row['Pdate'] . "</td>";
	echo "<td>" . $row['Gender'] . "</td>";
	echo "<td>" . $row['Age'] . "</td>";
    echo "<td>" . $row['MobileNo'] . "</td>";
	echo "<td>" . $row['LandlineNo'] . "</td>";
	echo "<td>" . $row['Emailid'] . "</td>";
	
	echo "<td>" . $row['Helpfulness'] . "</td>";
	echo "<td>" . $row['Courtesy'] . "</td>"; 

	echo "<td>" . $row['Efficiency'] . "</td>";
	echo "<td>" . $row['Courtesy'] . "</td>";
	echo "<td>" . $row['Waiting_Time'] . "</td>";
	
	echo "<td>" . $row['Communication'] . "</td>";
	echo "<td>" . $row['Courtesy'] . "</td>";
	echo "<td>" . $row['Lab_Services'] . "</td>"; 
	echo "<td>" . $row['Radiology_Services'] . "</td>";
	echo "<td>" . $row['Pharmacy_Services'] . "</td>";

	echo "<td>" . $row['Location'] . "</td>";
	echo "<td>" . $row['Specific_Services_offered'] . "</td>";
	echo "<td>" . $row['Referred_by_doctor'] . "</td>";
	echo "<td>" . $row['Friend_Family_Recommendation'] . "</td>";
	echo "<td>" . $row['Previous_Experience'] . "</td>";
	echo "<td>" . $row['Your_Doctor_Availability'] . "</td>"; 
	echo "<td>" . $row['Company_Recommendation'] . "</td>";
	echo "<td>" . $row['Other'] . "</td>";
	
	echo "<td>" . $row['Overall_exp'] . "</td>";
	echo "<td>" . $row['choose_in_future'] . "</td>";
	echo "<td>" . $row['Recommend'] . "</td>";
	echo "<td>" . $row['Team_member'] . "</td>";
	echo "<td>" . $row['Other_feedback'] . "</td>";
	echo "<td>" . $row['Filled_by'] . "</td>"; 
	echo "<td>" . $row['Relationship_of_attendent'] . "</td>";

	echo "</tr>";

}

echo "</table>";

}

else{
    echo "<script>alert('Zero Records found ');window.location.href='Admin.html?error=zero records found ';</script>";
	        exit();
}










}


}
?>

