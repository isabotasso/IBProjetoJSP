<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- DECLARATION -->
	<%!boolean formatar = true; %>
	
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	<!-- EXPRESSION -->
	<h1>A data de hoje é: <%=new java.util.Date() %></h1>
	<h1>A data de hoje é: <%=today() %></h1>
	
	<!-- SCRIPTLET -->
	<h1>A data de hoje é: <% if (formatar){
								out.println(today());
							 }else{
								 out.println(new java.util.Date());
						   }%></h1>



<!-- PARTE 2 -->

	 <!-- DECLARATION -->
	 <%!double altura = 1.58; %>
 	 <%! double peso = 75.0; %>


	<%! double calcularIMC(double altura, double peso){
	return peso / (altura*altura);
	 }%>
	 
<!-- SCRIPTLET -->
	 <% if (calcularIMC(altura, peso) > 25){
		 out.println("Sobrepeso");
		 } else {
		 out.println("imc normal");
		 }%>

<!-- EXPRESSION -->
 	 <h1><%=calcularIMC(altura, peso)%></h1>
 	 <br>

	<!-- PARTE 3 -->

	<!-- DECLARATION -->
		<%! Calendar cal = Calendar.getInstance();%>
		
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		
		<%!String par = "par";%>
		<%!String impar = "impar";%>

		<%if(segundos() % 2 == 0){
			out.println(par);
		}else{
			out.println(impar);
		}%>

		<h1>São <%=segundos()%> segundos</h1>
    
   

</body>
</html>