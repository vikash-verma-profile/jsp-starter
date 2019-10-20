
import com.signup.loginsignup;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Signup extends HttpServlet {

    loginsignup objsignup;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        objsignup = new loginsignup();
        int IsInserted = objsignup.RegisterUser(request.getParameter("fullname"), request.getParameter("email"), request.getParameter("password"));
        int UserId = objsignup.getUserId(request.getParameter("email"), request.getParameter("password"));
        HttpSession session = request.getSession();
        session.setAttribute("Userid", UserId);
        request.setAttribute("Name", request.getParameter("fullname"));
        RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
        rd.forward(request, response);
    }
}
