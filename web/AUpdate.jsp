<jsp:include page="NavBar.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String reg_no = request.getParameter("reg_no");
    String seat_count = request.getParameter("seat_count");
     try {
        Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

        //creating the database
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Flycatcher_user", "app", "app");
        
        PreparedStatement ps = con.prepareStatement("select * from AIRCRAFT where reg_no=?");
        ps.setString(1,reg_no);
        
        ResultSet rs = ps.executeQuery();
        


%>

<div class = "container center" style = "width:30%">
    <h3>Add aircraft details here</h3>
    
    
    <form method="POST" action="">
        <% while(rs.next()){ %>
        
        <div class="input-feild">
            <i class="material-icons prefix">person</i>
            <input  value= "<%=rs.getString("reg_no")%>" name="reg_no" type="text" class="validate"/> 

        </div><br>
        <div class="input-feild" >
            <i class="material-icons prefix">mail</i>
            <input  name="seat_count" value= "<%=rs.getString("seat_count")%>" type="text" class="validate">                         
        </div><br>
        <%}%>
        
        <button class="btn waves-effect waves-light" type="submit" name="Aupdate">Update

        </button>
    </form>
</div>
        
<%
        if(reg_no!=null && seat_count!=null){
            String query = "update AIRCRAFT set seat_count= ? where reg_no= ?";
            PreparedStatement pc = con.prepareStatement(query);
            pc.setString(1,seat_count);
            pc.setString(2, reg_no);
              
            int result = pc.executeUpdate();
            
            if(result > 0){
                
                RequestDispatcher rc =request.getRequestDispatcher("AirCraft.jsp");
                rc.forward(request, response);
            }
            else{
                RequestDispatcher rc =request.getRequestDispatcher("AirCraft.jsp");
                rc.include(request, response);
                out.println("<div class=\"container center\">"
                        + "Deletion Failed"
                        + "</div>");
            }
        }
        
        } catch (Exception e) {

        e.printStackTrace();
        out.println("wrong");

    }
%>
