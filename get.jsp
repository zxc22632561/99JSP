<%@ page contentType="text/html;charset=utf-8" import="java.awt.*,java.awt.event.*,javax.swing.*,java.io.*,java.*" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<center>
<form>
<%
	request.setCharacterEncoding("utf-8");
	int Multiplicative = Integer.parseInt(request.getParameter("Multiplicative"));
	int multiplier = Integer.parseInt(request.getParameter("multiplier"));
	
	out.println("<font size=5 color=red>"+Multiplicative+"*"+multiplier+"乘法表</font>");
	out.println("<table border=1 width=600 bordercolor=brow>");
	
	int i;
	for(i=1; i<=Multiplicative;i++){ 
		out.println("<tr>");
		for(int j=1 ;j<=multiplier;j++)
		{	
			out.println("<td width=80>"); //內表格
			
			if(j>i){	//符合條件才執行
				out.println("<font color= green>"+"*"+"</font>");
			}else{
				if(i==j || i+j==10){
					out.println("<font color= red>"+i+"*"+j+"="+j*i+"</font>");
				}else{
					out.println("<font color= blue>"+i+"*"+j+"="+j*i+"</font>");
				}
			}
		}
		out.println("</tr>");
	}

	out.println("</table>");
%>
</center>
</form>
</body>
</html>