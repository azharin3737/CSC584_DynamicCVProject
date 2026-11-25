<%-- 
    Document   : cvView
    Author     : AHMAD DANISH AZHARIN BIN AHMAD JOSLI
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title><c:out value="${cvData.fullName}"/> - CV</title>
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        
    </head>
    
    <body class="cv-page">
        
        <div class="toolbar no-print">
            
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/cvForm.jsp">&larr; Back to Form</a>
        
            <button class="btn btn-primary" onclick="window.print()">Print / Save as PDF</button>
        
        </div>
        
        <c:choose>
        
        <c:when test="${not empty cvData}">
            
        <article class="cv">
                
            <header class="cv-header">
                    
                <h1><c:out value="${cvData.fullName}"/></h1>
                
                <c:if test="${not empty cvData.professionalTitle}">
                    
                    <h2><c:out value="${cvData.professionalTitle}"/></h2>
                
                </c:if>
                    
                <p class="contact">
                    
                    <span><c:out value="${cvData.email}"/></span>
                    
                    <c:if test="${not empty cvData.phone}"><span><c:out value="${cvData.phone}"/></span></c:if>
                    
                    <c:if test="${not empty cvData.profileUrl}"><span><c:out value="${cvData.profileUrl}"/></span></c:if>
                
                </p>
                    
            </header>
                
            <c:if test="${not empty cvData.profileSummary}">
                    
                <section>

                    <h3>Profile Summary</h3>

                    <p><c:out value="${cvData.profileSummary}"/></p>

                </section>
                    
            </c:if>
                            
            <section>
                                
                <h3>Education</h3>
                                
                <div class="entry">
                    
                    <div class="entry-head">
                                   
                        <strong><c:out value="${cvData.highestDegree}"/></strong>
                                    
                        <c:if test="${not empty cvData.graduationYear}">
                                    
                            <span class="date"><c:out value="${cvData.graduationYear}"/></span>
                                    
                        </c:if>
                                        
                    </div>
                        
                    <c:if test="${not empty cvData.institution}"><div><c:out value="${cvData.institution}"/></div></c:if>
                    
                    <c:if test="${not empty cvData.major}"><div class="muted">Major: <c:out value="${cvData.major}"/></div></c:if> 
                                
                </div>
                
            </section>
                            
            <c:if test="${not empty cvData.jobTitle or not empty cvData.company}">
                                        
                <section>
                                                
                    <h3>Experience</h3>
                    
                    <div class="entry">
                                                    
                        <div class="entry-head">
                                                        
                            <strong><c:out value="${cvData.jobTitle}"/></strong>
                            
                            <span class="date"><c:out value="${cvData.duration}"/></span>                            

                        </div>
                                                        
                        <div><c:out value="${cvData.company}"/></div>
                                                        
                        <c:if test="${not empty cvData.responsibilities}">
                                                        
                            <p class="pre"><c:out value="${cvData.responsibilities}"/></p>
                                                            
                        </c:if>
                                                            
                    </div>
                                                
                </section>
                                            
            </c:if>
                                                            
            <section>
                                                                
                <h3>Skills</h3>
                
                <c:if test="${not empty cvData.technicalSkillList}">
                                                                    
                    <p class="skill-label">Technical</p>
                    
                    <ul class="chips">
                                                                        
                        <c:forEach var="s" items="${cvData.technicalSkillList}">
                                                                        
                            <li><c:out value="${s}"/></li>
                                                                        
                        </c:forEach>
                                                                        
                        </ul>
                                                                            
                </c:if>
                                                                            
                <c:if test="${not empty cvData.softSkillList}">
                                                                            
                    <p class="skill-label">Soft Skills</p>
                                                                                
                    <ul class="chips">
                                                                                    
                        <c:forEach var="s" items="${cvData.softSkillList}">
                                                                                        
                            <li><c:out value="${s}"/></li>
                                                                                    
                        </c:forEach>
                                                                                    
                    </ul>
                                                                                
                </c:if>
                                                                            
            </section>
            
        </article>
        
        </c:when>

        <c:otherwise>
            
            <p class="no-data">No CV data available. <a href="${pageContext.request.contextPath}/cvForm.jsp">Create one</a>.</p>
            
        </c:otherwise>
        
        </c:choose>
       
    </body>
    
</html>