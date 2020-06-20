<jsp:include page="NavBar.jsp"></jsp:include>
<style>
    body{
        background-image: url(13.jpg);
        background-size: cover;
    }
    .card{
        background-image: url(16.jpg);
        background-size:cover;
        box-shadow: 5px 10px 10px rgba(0, 0, 0, 0.5);
    }
    .validate{
        color: black;
    }
</style>
<div class = "container center" style = "width:30%;margin-top:3%">
    <div class="card" style = "height: 500px;width:400px; overflow: hidden; ">
        <div class = "container center"style=" width: 80%">
    <h3>User Login</h3>
    <form method="POST" action="UserServlet">
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Email" name="user_email" type="text" class="validate" required> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">lock</i>
            <input placeholder="Password" name="user_password" type="text" class="validate" required>                         
        </div><br>
        <button class="btn waves-effect waves-light" type="submit" name="ULogin">Login

        </button><br>
        <h7> New to fly catcher?</h7><br>
        <a href="Register.jsp">Create new account</a>
    </form>
    </div>
    </div>
    </div>

