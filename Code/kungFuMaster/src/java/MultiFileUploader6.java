
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
public class MultiFileUploader6 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            HttpSession session = request.getSession();
            String sp_email = (String) session.getAttribute("sp_email");
            String caption = request.getParameter("caption");

            //Part part1= request.getPart("fn");
            Collection<Part> parts = request.getParts();
            String ans = "";
            String filename = "";
            String absolutepath = request.getServletContext().getRealPath("/gallery");

            System.out.println(absolutepath + " complete path");

            int i = 1;
            String path = "";
            for (Part part : parts) {
                if (part.getSize() == 0) {
                } else {
                    filename = vmm.FileUploader.savefileonserver(part, absolutepath);

                    // String filename=vmm.FileUploader.savefileonserver(part,absolutepath,"hello"+(i++)+".jpg");
                    //you can pass third paramater to change filename on serverside
                    if (filename.equals("not-a-file")) {
                        ans += "<br>" + "This is not file....This is some text data";
                    } else {
                        ans += "<br>" + filename;
                        path = "./gallery/" + filename;
                    }
                }
            }

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from work_gallery");

            rs.moveToInsertRow();
            rs.updateString("sp_email", sp_email);

            rs.updateString("photo", path);
            rs.updateString("caption", caption);

            rs.insertRow();
            response.sendRedirect("service_provider_home.jsp?msg=Entry Added");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
