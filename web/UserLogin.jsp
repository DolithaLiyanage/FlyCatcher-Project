<jsp:include page="NavBar.jsp"></jsp:include>


    <div class="card" style = "height: 500px;width:400px; overflow: hidden; ">
        <div class = "container center"style=" width: 80%">
    <h3>User Login</h3>
    <form method="POST" action="UserServlet">
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input placeholder="Email" name="user_email" type="text" class="validate"> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">lock</i>
            <input placeholder="Password" name="user_password" type="text" class="validate">                         
        </div><br>
        <button class="btn waves-effect waves-light" type="submit" name="ULogin">Login

        </button><br>
        <h7> New to fly catcher?</h7><br>
        <a href="Register.jsp">Create new account</a>
    </form>
    </div>
    </div>
    </div>

