<jsp:include page="NavBar.jsp"></jsp:include>
<div class = "container center" style = "width:30%">
    <h3>Add aircraft details here</h3>
    
    <form method="POST" action="AircraftServlet">
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Registration No." name="reg_no" type="text" class="validate"> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input placeholder="Seat Count" name="seat_count" type="text" class="validate">                         
        </div><br>
        
        <button class="btn waves-effect waves-light" type="submit" name="Ureg">Register

        </button>
    </form>
</div>
