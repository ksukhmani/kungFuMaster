import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class MultiFileUploader5 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            //Part part1= request.getPart("fn");
            Collection<Part> parts = request.getParts();
            String ans = "";

            String absolutepath = request.getServletContext().getRealPath("/sp_pics");

            System.out.println(absolutepath + " complete path");

            int i = 1;
            String path = "";
            for (Part part : parts) {
                String filename = vmm.FileUploader.savefileonserver(part, absolutepath);

                // String filename=vmm.FileUploader.savefileonserver(part,absolutepath,"hello"+(i++)+".jpg");
                //you can pass third paramater to change filename on serverside
                if (filename.equals("not-a-file")) {
                    ans += "<br>" + "This is not file....This is some text data";
                } else {
                    ans += "<br>" + filename;
                    path = "./sp_pics/" + filename;
                }
            }

            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String website = request.getParameter("web");
            String start_hour = request.getParameter("sh");
            String end_hour = request.getParameter("eh");
            String per_hp = request.getParameter("php");
            String lat = request.getParameter("lat");
            String lon = request.getParameter("long");
            String description = request.getParameter("desc");
            String category = request.getParameter("sel_cat");
            String sub_cat = request.getParameter("sc");
            String city = request.getParameter("city");
           
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + email + "\' ");
            if (rs.next()) {
                response.sendRedirect("service_provider_signup.jsp?msg=This ServiceProvider Already Exists");

            } else {
                rs.moveToInsertRow();
                 int u=10000,l=1000;
                int random_no=(int)(l+(u-l)*Math.random());
                rs.updateString("password", random_no+" ");
                rs.updateString("sp_email", email);
                rs.updateString("name", name);
                rs.updateString("phone", phone);
                rs.updateString("website", website);
                rs.updateString("per_hour_price", per_hp);
                rs.updateString("starting_hour", start_hour);
                rs.updateString("ending_hour", end_hour);
                rs.updateString("latitude", lat);
                rs.updateString("longitude", lon);
                rs.updateString("description", description);
                rs.updateString("photo", path);
                rs.updateString("sub_category", sub_cat);
                rs.updateString("city", city);
                rs.insertRow();
                response.sendRedirect("service_provider_signup.jsp?msg=Signup Successfull..");

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}