<jsp:include page="NavBar.jsp"></jsp:include>
<div class = "container center" style = "width:30%">
    <h3>Add Flight details here</h3>
    
    <form method="POST" action="FlightServlet">
       
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Departure Date" name="dep_date" type="text" class="datepicker" id="datepicker1">                         
        </div><br>
        
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Departure Time" name="dep_time" type="text" class="validate" > 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Departure Airport" name="dep_airport" type="text" class="validate">                         
        </div><br>
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Arrival Date" name="arr_date" type="text" class="datepicker" id="datepicker2"> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Arrival Time" name="arr_time" type="text" class="validate" >                         
        </div><br>
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Arrival Airport" name="arr_airport" type="text" class="validate"> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Aircraft No." name="aircraft_no" type="text" class="validate">                         
        </div><br>
         <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Price per Head" name="price" type="text" class="validate">                         
        </div><br>
        
        <button class="btn waves-effect waves-light" type="submit" name="sub">Submit

        </button>
    </form>
</div>
<script>
    $(function() {
       $("#datepicker1, #datepicker2").datepicker({format:'yyyy-mm-dd'});
    });
   
</script>
