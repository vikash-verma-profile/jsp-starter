
import com.models.UserDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.signup.loginsignup;
import javax.servlet.http.HttpSession;

/**
 *
 * @author om
 */
public class MyProfile extends HttpServlet {

    loginsignup Objloginsignup;
    UserDetails ObjUserDetails;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Objloginsignup = new loginsignup();
        HttpSession session = request.getSession();
        ObjUserDetails = Objloginsignup.getUserDetailsByUserID(session.getAttribute("Userid").toString());
        RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
        request.setAttribute("Name", ObjUserDetails.getName());
        request.setAttribute("Emailid", ObjUserDetails.getEmailid());
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
