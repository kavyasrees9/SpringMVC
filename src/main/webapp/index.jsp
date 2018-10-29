<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>


 

  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">

  

  

    <script src="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css"></script>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
 <style>
/* #example{

    width: 100%;
    position: relative;
    top: 60px;


} */
 #example_wrapper{

    position: relative;

    /* float: 10px; */

    top: 80px;

    right: 750px;

   

}

#example_filter{


    color: #333;

    position: relative;

    right: -125px;

}


#example_length{

 color: #333;

    position: relative;

    left: 10px;

 top: 25px;


}

 

 #heading{

 

 

 

position: relative;

 right: 750px;

 top:80px;

 }

 #contact{

 

 

     display: block;

    position: relative;

    top: 60px;

 

 

 }
 #contactForm{
 
 position: relative;
    top: 64px;
    left: 50px;
    width: 169%;
 
 
 }

 #tooltitle {

    position: relative;

    right: 500px;

    top: 20px;

    font-size: 30px;

    height: 5px;

    color: darkorange;

}

 </style>

<meta charset="utf-8">


<meta http-equiv="Content-Type" content="text/html; ">

<meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">

  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


<title>Insert title here</title>

</head>




<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

  <!--banner-->

  <section id="banner" class="banner">

    <div class="bg-color">

      <nav class="navbar navbar-default navbar-fixed-top">

        <div class="container">

          <div class="col-md-12">

            <div class="navbar-header">

              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">

				        <span class="icon-bar"></span>

				        <span class="icon-bar"></span>

				        <span class="icon-bar"></span>

				      </button>

             

            </div>

            

            <div class="collapse navbar-collapse navbar-right" id="myNavbar">

              <h1 id="tooltitle">Fitness  Tracker</h1>

              <ul class="nav navbar-nav">

            

                <li class="active" id="update"><a href="#contact">update Tracker</a></li>

                

                <li  class="" id=view><a id="view" href="#tracker">view Tracker</a></li>

              </ul>

            </div>

          </div>

        </div>

      </nav>


    </div>

  </section>

 

  <section id="tracker" class="section-padding">

    <div class="container">

      <div class="row">

        <div class="schedule-tab">

          <div class="col-md-4 col-sm-4 bor-left">

            <div class="mt-boxy-color"></div>

            

          </div>

          <div class="col-md-4 col-sm-4">

         

          </div>

          <div class="col-md-4 col-sm-4 mt-boxy-3">

            <div class="mt-boxy-color"></div>

            <div class="time-info">

               <h3 id="heading">Tracker Details</h3>

              <table id="example" class="cell-border"  style="width:100%">

        <thead>

            <!-- <tr>

                <th>Name</th>

                <th>Date</th>

                <th>Type</th>

                <th>Hours</th>

                <th>Start date</th>

                <th>Salary</th>

            </tr> -->

        </thead>

        <tbody>

        

           

            </tbody>

            </table>

            </div>

          </div>

        </div>

      </div>

    </div>

  </section>


  <!--cta-->

  <!--contact-->

  <section id="contact" class="section-padding">

    <div class="container">

      <div class="row">

    

        <div class="col-md-8 col-sm-8 marb20">

          <div class="contact-info">

          

            <div class="space"></div>

        

            <div id="errormessage"></div>
            <script>

</script>
            <form action="" method="post" role="form" class="contactForm" style=" position: relative;
    top: 64px;
    left: 50px;
    width: 169%;">

              <h3 class="cnt-ttl">add Record</h3>

              <div class="form-group">

                <input type="text" style="max-width:20%" name="name" class="form-control br-radius-zero" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />

                <div class="validation"></div>

              </div>

              <div class="form-group">

                <input type="date" style="max-width:20%" class="form-control br-radius-zero" name="date" id="date" placeholder="Select date" data-rule="email" data-msg="" />

                <div class="validation"></div>

              </div>

              <div class="form-group" >

                <select type="dropdown" style="max-width:20%" name="type" id="type"   >

                <option >Select</option>

                <option>Walking</option>

                <option>Swimming</option>

                <option>Dancing</option>

                <option>Running</option>

                </select>

                <div class="validation"></div>

              </div>

              <div class="form-group">

                <input type="text" id="hours" style="max-width:20%" name="hours" data-rule="required"data-msg="Please write something for us"  placeholder="Duration in mins"></input>

                <div class="validation"></div>

              </div>


              <div class="form-action">
<input type="button" style="max-width:10%"  name="Submit" value="ADD" onclick="checkAjaxCall();">
           <!--      <button type="submit"  onclick="checkAjaxCall();" class="btn btn-form"></button> -->

              </div>

            </form>

          </div>

        </div>

      </div>

    </div>

  </section>




 

</body>





 <head>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

</head>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script>






$(document).ready(function() {

	  $('.contactForm').hide();
	  $('#example').hide();
	  $('#heading').hide();
	   // $('#example').DataTable();

	} );

$("#update").click(function(){

 //   alert("The paragraph was clicked.");

    $('.contactForm').show();

    $('#tracker').hide();

});

$("#view").click(function(){

	  alert("The paragraph was clicked.");

	    $('.contactForm').hide();

	    $('#tracker').show();
	    displayAllRecords();
	});

function checkAjaxCall(){
	  $('#example').hide();
	  var name = $('#name').val(); 

	    var date = $('#date').val(); 

	    var type = $('#type').val(); 

	    var hours = $('#hours').val(); 

	    var json = {"name" : name,"date":date,"type":type,"hours":hours};  
	    $.ajax({

	        url: "updateTrackerDetails",

	        type: 'POST',

	        data: JSON.stringify(json),

	        cache:false,

	        beforeSend: function(xhr) {  

	            xhr.setRequestHeader("Accept", "application/json");  

	            xhr.setRequestHeader("Content-Type", "application/json");  

	        },

	        success:function(response){
               var response1="["+response+"]";
	            alert("Validation: "+response.validation+"   Name: "+response.name+response.date+response.type+response.hours);
	           // response = $.parseJSON(response1);
	           
	          
	        },

	        error:function(jqXhr, textStatus, errorThrown){

	            alert(textStatus);

	        }

	    });


}







	//alert("hellooo");
 function displayAllRecords(){
	 alert("hellooo");
	 $('#example').hide();
	    $.ajax({

	    	
	    	
	    	type:'GET',
	        url: "displayTrackerDetails",
	        dataType: 'json',
	        success:function(data, status){
				alert("successs");
	            console.log(data);
	            
	            var number_of_rows = data.length;
	              var k = 0;
	            
	           //   for(j in data){
	        	   var table_body=document.getElementById("example");
	        	   var table_body = '<thead><tr><th>Name</th><th>Date</th><th>Type</th><th>Hours</th></tr></thead><tbody>';
	              for(i =0;i<data.length;i++){
	                    table_body+='<tr>';
	                    table_body +='<td>';
	                    table_body +=data[i].name;
	                    table_body +='</td>';
	                   
	                    table_body +='<td>';
	                    table_body +=data[i].date;
	               
	                    table_body +='</td>';
	                
	                    table_body +='<td>';
	                    table_body +=data[i].type;
	               
	                    table_body +='</td>';
	                    
	                    table_body +='<td>';
	                    table_body +=data[i].hours;
	               
	                    table_body +='</td>';
	                    table_body+='</tr>';
	              }
	              k++;
	          
	                table_body+='</tbody></table>';
	               $('#example').html(table_body);
	               $('#example').show();
	               $('#heading').show();
	               $('#example').DataTable();
		        

	            },
	        error:function(xhr, status, errorThrown){

	            console.log(xhr);
	            console.log(status);
	            console.log(errorThrown);
	        }
	     
	    });

	    return true;

	} 

</script>



</html>