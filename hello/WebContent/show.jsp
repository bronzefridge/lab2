    <span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="GBK"%>  
    <%@ page contentType="text/html;charset=utf-8"%>  
    <html>  
    <head> 
    <title>the book's data</title> 
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
            //驱动程序名   
            String driverName = "com.mysql.jdbc.Driver";  
            //数据库用户名   
            String userName = "root";  
            //密码   
            String userPasswd = "1996050312z";  
            //数据库名   
            String dbName = "图书数据库BookDB";  
            //表名   
            String tableName = "Book";  
            //联结字符串   
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
                        out.print("ISBN");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("Title");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("AuthorID");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("Publisher");  
                    %>  
                </th>  
                <th>  
                    <%  
                        out.print("PublishDate");  
                    %>  
                </th> 
                <th>  
                    <%  
                        out.print("Price");  
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
            <td>  
                <%  
                    out.print(rs.getString(5));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(6));  
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