<%-- 
    Document   : cvForm
    Author     : AHMAD DANISH AZHARIN BIN AHMAD JOSLI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>CV Builder - Enter Your Details</title>
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        
    </head>
    
    <body class="form-page">
        
        <div class="form-container">
            
            <h1>Dynamic Online CV Builder</h1>
            
            <p class="subtitle">Fill in your details to generate a professional CV. Fields marked <span class="req">*</span> are required.</p>
            
            <!--GET flow-->
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/CVServlet?action=sample">Preview Sample CV</a>
            
            <!--POST flow-->
            <form action="${pageContext.request.contextPath}/CVServlet" method="post">
                
                <fieldset>
                    
                    <legend>Personal Information</legend>
                    
                    <label>Full Name <span class="req">*</span>
                        
                        <input type="text" name="fullName" required>
                        
                    </label>
                    
                    <label>Professional Title
                        
                        <input type="text" name="professionalTitle">
                        
                    </label>
                    
                    <label>Email <span class="req">*</span>
                        
                        <input type="email" name="email" required>
                        
                    </label>
                    
                    <label>Phone Number
                        
                        <input type="tel" name="phone" placeholder="+60 12-345 6789">
                        
                    </label>
                    
                    <label>LinkedIn / GitHub URL
                        
                        <input type="url" name="profileUrl" placeholder="https://github.com/username">
                        
                    </label>
                    
                    <label>Profile Summary
                        
                        <textarea name="profileSummary" rows="4"></textarea>
                        
                    </label>
                    
                </fieldset>
                
                <fieldset>
                    
                    <legend>Education</legend>
                    
                    <label>Highest Degree <span class="req">*</span>
                        
                        <select name="highestDegree" required>
                            
                            <option value="">-- Select --</option>
                            
                            <option>Diploma</option>
                            
                            <option>Bachelor's Degree</option>
                            
                            <option>Master's Degree</option>
                            
                            <option>PhD</option>
                            
                        </select>
                        
                    </label>
                    
                    <label>Institution Name
                        
                        <input type="text" name="institution">
                    
                    </label>
                    
                    <label>Year of Graduation
                        
                        <input type="text" name="graduationYear" placeholder="2026" maxLength="4">
                        
                    </label>
                    
                    <label>Major / Field
                        
                        <input type="text" name="major">
                               
                    </label>
                    
                </fieldset>
                
                <fieldset>
                    
                    <legend>Experience</legend>
                    
                    <label>Most Recent Job Title
                        
                        <input type="text" name="jobTitle">
                    
                    </label>
                    
                    <label>Company Name
                        
                        <input type="text" name="company">
                        
                    </label>
                    
                    <label>Duration
                        
                        <input type="text" name="duration" placeholder="Jan 2025 - Present">
                    </label>
                    
                    <label>Key Responsibilities / Achievements (one per line)
                        
                        <textarea name="responsibilities" rows="4"></textarea>
                        
                    </label>
                    
                </fieldset>
                
                <fieldset>
                    
                    <legend>Skills</legend>
                    
                    <label>Technical Skills (comma-separated) <span class="req">*</span>
                    
                        <input type="text" name="technicalSkills" placeholder="Web Development, Database Engineering">
                    
                    </label>
                    
                    <label>Soft Skills (comma-separated) <span class="req">*</span>
                        
                        <input type="text" name="softSkills" placeholder="Teamwork, Communication">
                        
                    </label>
                    
                </fieldset>
                
                <div class="actions">
                    
                    <button type="submit" class="btn btn-primary">Generate CV</button>
                    
                    <button type="reset" class="btn btn-secondary">Reset</button>
                    
                </div>
                
            </form>
        
        </div>
        
    </body>
    
</html>