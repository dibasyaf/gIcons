<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d");

String DB_DRIVER = "org.postgresql.Driver";
String DB_HOST = "jdbc:postgresql://ec2-34-198-189-252.compute-1.amazonaws.com:5432" + "/dob7lkf4mshto";
String DB_USER = "evtskqzplnsnmj";
String DB_PASSWORD = "3a0c00f84c82232f9702c496f684c5a3633eb3192fcc4fe8638cc744f134cb93";

Class.forName(DB_DRIVER).newInstance();
Connection conn = DriverManager.getConnection(DB_HOST,DB_USER,DB_PASSWORD);
Statement stat = conn.createStatement();
stat.executeUpdate("delete from crud where id='"+id+"'");
response.sendRedirect("index.jsp");
%>

