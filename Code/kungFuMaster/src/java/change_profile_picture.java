
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class change_profile_picture extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            HttpSession session = request.getSession();
            String sp_email = (String) session.getAttribute("sp_email");
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MyFileUploader</title>");
            out.println("</head>");
            out.println("<body>");

            //Part part1= request.getPart("fn");
            Collection<Part> parts = request.getParts();
            String ans = "";

            String absolutepath = request.getServletContext().getRealPath("/sp_pics");

            System.out.println(absolutepath + " complete path");

            int i = 1;
            String path="";
            for (Part part : parts) {
                String filename = vmm.FileUploader.savefileonserver(part, absolutepath);

                // String filename=vmm.FileUploader.savefileonserver(part,absolutepath,"hello"+(i++)+".jpg");
                //you can pass third paramater to change filename on serverside
                if (filename.equals("not-a-file")) 
                {
                    ans += "<br>" + "This is not file....This is some text data";
                } else
                {
                    ans += "<br>" + filename;
                    path = "./sp_pics/" + filename;
                }
            }
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select* from service_provider where sp_email=\'" + sp_email + "\'");
            if (rs.next())
            { 
               rs.updateString("photo",path);
               rs.updateRow();
               response.sendRedirect("service_provider_home.jsp?msg=profile pic updated");

            }

        
    }
    catch (Exception ex)
    {
            ex.printStackTrace();
    }
}
}   

