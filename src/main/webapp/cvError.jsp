<%-- 
    Document   : cvError
    Author     : AHMAD DANISH AZHARIN BIN AHMAD JOSLI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>CV Builder - Validation Error</title>
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        
    </head>
    
    <body class="form-page">
        
        <div class="form-container error-box">
            
            <h1>Oops, something is missing</h1>
            <p><c:out value="${errorMessage}" default="Invalid input."/></p>
            
            <ul class="error-list">

                <c:forEach var="e" items="${errors}">

                    <li><c:out value="${e}"/></li>

                </c:forEach>

            </ul>
                    
                    <div class="actions">
                        
                        <a class="btn btn-primary" href="javascript:history.back()">Go Back and Fix (keeps your input)</a>
                        
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/cvForm.jsp">Start Over</a>
                        
                    </div>

        </div>
        
        
    </body>
    
</html>