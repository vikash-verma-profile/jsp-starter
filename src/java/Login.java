
import com.models.UserDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.signup.loginsignup;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    loginsignup objlogin;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        objlogin = new loginsignup();
        int UserId = objlogin.getUserId(request.getParameter("UserName"), request.getParameter("Loginpassword"));
        if (UserId != 0) {
            HttpSession session = request.getSession();
            session.setAttribute("Userid", UserId);
            UserDetails ObjUserDetails = objlogin.getUserDetails(request.getParameter("UserName"), request.getParameter("Loginpassword"));
            request.setAttribute("Name", ObjUserDetails.getName());
            RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("error", "Please enter correct username or password");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

    }
}
