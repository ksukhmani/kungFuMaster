<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date.*" %>

<%
    String email =request.getParameter("email");
    String fname =request.getParameter("name");
    String lname =request.getParameter("lname");
    
    String dob = request.getParameter("dob");
    //String dob =request.getParameter("dob");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date dob1 = sdf.parse(dob);
    
    String jdate =request.getParameter("jdate");
    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
    Date jdate1 = sdf1.parse(jdate);
    
    String mobile= request.getParameter("phone");
    String street= request.getParameter("street");
    String city= request.getParameter("city");
    String pin= request.getParameter("pin");
    String pcontact= request.getParameter("pconatct");
    String mname= request.getParameter("mname");
    String mcontact= request.getParameter("mcontact");
    String memail= request.getParameter("memail");
    String faname= request.getParameter("faname");
    String femail= request.getParameter("femail");
    String fcontact= request.getParameter("fcontact");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu", "root", "admin");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    
    int i=stmt.executeUpdate("insert into student_id_table(stu_fname,stu_lname,stu_dob)values('"+fname+"','"+lname+"','"+dob1+"')");
    int i1=stmt.executeUpdate("insert into student_info(stu_joindate,stu_mobile,stu_email,stu_street,stu_city,stu_pincode)values('"+jdate1+"','"+mobile+"','"+street+"','"+city+"','"+pin+"')");
    int i2=stmt.executeUpdate("insert into parents_info(preferred_contact,f_name,f_email,f_mobile,m_name,m_email,m_mobile)values('"+pcontact+"','"+fname+"','"+femail+"','"+fcontact+"',,'"+mname+"','"+memail+"','"+mcontact+"')");
    
    
%>
