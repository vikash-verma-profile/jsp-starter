
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.signup.signup;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    signup objsignup;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        objsignup =new signup();
        int IsInserted = objsignup.RegisterUser(request.getParameter("fullname"), request.getParameter("email"), request.getParameter("password"));
        int UserId = objsignup.getUserId(request.getParameter("email"), request.getParameter("password"));
        HttpSession session = request.getSession();
        session.setAttribute("Userid", UserId);
        request.setAttribute("Name", request.getParameter("fullname"));
        
       // response.sendRedirect("./welcome.jsp");
    }
}
