// src/main/java/web/LoginServlet.java
package Web;

import Controller.LoginController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private LoginController loginController;

    public void init() {
        loginController = new LoginController();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("email");
        String password = request.getParameter("password");

        if (loginController.authenticate(username, password)) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("Vue/login.jsp");
        }
    }
}
