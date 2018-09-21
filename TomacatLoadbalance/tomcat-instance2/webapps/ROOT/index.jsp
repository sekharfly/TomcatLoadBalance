<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
 
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
<title>JSP Page</title>
           
<span style="color: blue; font-size: xx-small;">Instance 2</span>
                 
<hr>
<span style="color: #cc0000; font-size: xx-small;">             
	Session Id : <%=request.getSession().getId()%>           Is it
	New Session : <%=request.getSession().isNew()%>           Session
	Creation Date : <%=new Date(request.getSession().getCreationTime())%>  
	Session Access Date : <%=new Date(request.getSession().getLastAccessedTime())%>
</span>
        
<b>Cart List </b>
          
<ul>
<%
	String bookName = request.getParameter("bookName");
	List<String> listOfBooks = (List<String>)request.getSession().getAttribute("book");
	if(listOfBooks == null){
		listOfBooks = new ArrayList<String>();
		request.getSession().setAttribute("book", listOfBooks);
	}
	if(bookName != null){
		listOfBooks.add(bookName);
		request.getSession().setAttribute("book", listOfBooks);
	}
	for(String book : listOfBooks){
		out.println("<li>"+book+"</li>");
	}
	 
%>

</ul>
        
<form action="index.jsp" method="post">
	            Book Name <input name="bookName" type="text">  
	            <input type="submit" value="Add to Cart">         
</form>
<hr>
    
