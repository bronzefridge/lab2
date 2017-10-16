
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head><title>Wrong author</title></head>
 
<%
String name = request.getParameter("name");
if((name!=null))
{
    session.setAttribute("username",name);
}
%>
<p>sorry the fiction can't use</p>