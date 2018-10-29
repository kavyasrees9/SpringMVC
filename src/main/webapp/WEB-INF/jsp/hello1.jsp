<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css"></script>
 


  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
#name{
max-width: 10%;
margin-left:15%;
margin-top: 3%;
}
#namelbl{
margin-left:20%;
}
#droplbl{
    margin-left: 18%;
    margin-top: 25px;
}
#type{
    /* margin-left: 1%; */
    margin-top: 19px;
    margin-left: 205px;
    width: 136px;
}
.dropdown-menu{
 margin-left: 273px;
 max-width: 10%;
}
#add{
margin-left: 238px;

margin-top: 21px;

}
#heading {
    position: relative;
    left: 161px;
    margin-top: 76px;
}
#date{
max-width: 12%;
margin-left:15%;
 margin-top: 17px;
}
#hours{
max-width: 10%;
margin-left:15%;
 margin-top: 15px;
}
 #example{
 max-width: 50%;
/* position:relative;

left:550px;
top:-220px;  */	

} 

</style> 



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
<h1>${greeting}</h1>




 
	 <h2 id="heading" >Fitness Tracker</h2>
	<div class="form-group">
	<form:form commandName="person" method="post" action="">
    <!-- <label id="namelbl" for="exampleInputEmail1">Name:</label> -->
 <input id="name" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name">
 
 <input id="date" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
 <!--  <label id="droplbl" for="exampleInputEmail1">Workout:</label> -->
   <div class="dropdown">
  
    <button id="type" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Select type
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Running</a></li>
      <li><a href="#">Walking</a></li>
      <li><a href="#">Swimming</a></li>
       <li><a href="#">Sleeping</a></li>
      <li class="divider"></li>
      
    </ul>
    <input id="hours" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Duration">
  </div>
  <!--  <p><input type="button" name="Submit" value="Submit" onclick="checkAjaxCall();"></p> -->
  <button id="add" type="button" class="btn btn-primary"  onclick="checkAjaxCall();">Add</button>
  </form:form>
  </div> 
  
  <table id="example" class="table table-striped table-bordered" >
        <thead>
            <tr>
                <th>Name</th>
                <th>Date</th>
                <th>Excercise</th>
                <th>Duration</th>
                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Rashmi</td>
                <td>08/10/2018</td>
                <td>Running</td>
                <td>20</td>
                
            </tr>
                  <tr>
                <td>Kavya</td>
                <td>08/10/2018</td>
               
                <td>Swimming</td>
                <td>15</td>
            </tr>
                  <tr>
                <td>Raghu</td>
                <td>08/10/2018</td>
                <td>Walking</td>
               
                <td>60</td>
            </tr>
            </tbody>
            </table>
  

   <script type="text/javascript">
  
  $(document).ready(function() {
	    $('#example').DataTable();
	} );
  
/*   $("#add").click(function(){
	  
	  
	  alert("add clickeddddd");
	  searchViaAjax();
	     $.ajax({url: "demo_test.txt", success: function(result){
	        $("#div1").html(result);
	    }}); 
	}); 
	*/
  function checkAjaxCall(){
	    
	    var name = $('#name').val(); 
	    var type = $('#type').val(); 
	    var json = {"name" : name};  
	    $.ajax({
	        url: "validateCaptchaThroughAJAX.web",
	        type: 'POST',
	        data: JSON.stringify(json),
	        cache:false,
	        beforeSend: function(xhr) {  
	            xhr.setRequestHeader("Accept", "application/json");  
	            xhr.setRequestHeader("Content-Type", "application/json");  
	        },
	        success:function(response){
	            alert("Validation: "+response.validation+"   Name: "+response.name);
	        },
	        error:function(jqXhr, textStatus, errorThrown){
	            alert(textStatus);
	        }
	    });
	    return true;
	}  
  </script>
   
  
</body>
</html>