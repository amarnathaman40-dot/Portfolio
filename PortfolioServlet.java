import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

public class PortfolioServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Amarnath Portfolio</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<h1>Welcome to My Portfolio</h1>");
        out.println("<hr>");

        out.println("<h2>About Me</h2>");
        out.println(
                "<p>Hello! I am Amarnath Gouda, a Java developer who loves backend development and building web apps.</p>");

        out.println("<h2>Skills</h2>");
        out.println("<ul>");
        out.println("<li>Java</li>");
        out.println("<li>Web Development</li>");
        out.println("<li>Laravel</li>");
        out.println("<li>MySQL</li>");
        out.println("<li>Reacy</li>");
        out.println("</ul>");

        out.println("<h2>Projects</h2>");
        out.println("<ol>");
        out.println("<li>Student Management System</li>");
        out.println("<li>Online Quiz Application</li>");
        out.println("<li>Basic E-commerce Website</li>");
        out.println("</ol>");

        out.println("<h2>Contact</h2>");
        out.println("<p>Email: amarnath40@gmail.com</p>");
        out.println("<p>Phone: 9078566244</p>");

        out.println("<hr>");
     

        out.println("</body>");
        out.println("</html>");
    }
}