    <span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="GBK"%>  
    <%@ page contentType="text/html;charset=utf-8"%>  
    <html>  
    <head>
    <title>the author's data</title>  
    <style type="text/css">  
   
    table {  
        border: 2px #CCCCCC solid;  
        width: 400px;  
    }  
      
    td,th {  
        height: 40px;  
        border: #CCCCCC 1px solid;  
    }  
    </style>  
    </head>  
    <body>  
        <%  
            //����������   
            String driverName = "com.mysql.jdbc.Driver";  
            //���ݿ��û���   
            String userName = "root";  
            //����   
            String userPasswd = "1996050312z";  
            //���ݿ���   
            String dbName = "ͼ�����ݿ�BookDB";  
            //����   
            String tableName = "Author";  
            //�����ַ���   
            String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                    + userName + "&password=" + userPasswd;  
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            Connection connection = DriverManager.getConnection(url);  
            Statement statement = connection.createStatement();  
            String sql = "SELECT * FROM " + tableName;  
            ResultSet rs = statement.executeQuery(sql);  
        %>  
        <br>  
        <br>  
        <table align="center">  
            <tr>  
                <th>  
                    <%  
                        out.print("AuthorID");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("Name");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("Age");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("Country");  
                    %>  
                </th>  
                 
            </tr>  
      
            <%  
                while (rs.next()) {  
            %>  
            <tr>  
                <td>  
                    <%  
                        out.print(rs.getString(1));  
                    %>  
                </td>  
                <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td>
            
            </tr>  
            <%  
                }  
            %>  
        </table>  
        <div align="center">  
            <br> <br> <br>  
            <%  
                out.print("Data query succeed!");  
            %>  
        </div>  
        <%  
            rs.close();  
            statement.close();  
            connection.close();  
        %>  

    
    </body>  
    </html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
    </span></span>  