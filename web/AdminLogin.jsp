<jsp:include page="NavBar.jsp"></jsp:include>
<div class = "container center" style = "width:30%">
    <h3>Admin Login</h3>
    <form method="POST" action="NewServlet1">
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Email" name="admin_email" type="text" class="validate"> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">lock</i>
            <input placeholder="Password" name="admin_password" type="text" class="validate">                         
        </div><br>
        <button class="btn waves-effect waves-light" type="submit" name="ALogin">Login

        </button>
    </form>
</div>
