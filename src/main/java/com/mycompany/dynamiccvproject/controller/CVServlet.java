/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.dynamiccvproject.controller;


import com.mycompany.dynamiccvproject.model.CVBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author AHMAD DANISH AZHARIN BIN AHMAD JOSLI
 * Ini ialah Controller
 */
public class CVServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        String action = request.getParameter("action");
        
        if("sample".equals(action)){
            CVBean sample = createSampleBean();
            request.setAttribute("cvData", sample);
            forward(request, response, "/cvView.jsp");
        }else{
            forward(request, response, "/cvForm.jsp");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        CVBean cvBean = new CVBean();
        cvBean.setFullName(param(request, "fullName"));
        cvBean.setProfessionalTitle(param(request, "professionalTitle"));
        cvBean.setEmail(param(request, "email"));
        cvBean.setPhone(param(request, "phone"));
        cvBean.setProfileUrl(param(request, "profileUrl"));
        cvBean.setProfileSummary(param(request, "profileSummary"));
        
        cvBean.setHighestDegree(param(request, "highestDegree"));
        cvBean.setInstitution(param(request, "institution"));
        cvBean.setGraduationYear(param(request, "graduationYear"));
        cvBean.setMajor(param(request, "major"));
        
        cvBean.setJobTitle(param(request, "jobTitle"));
        cvBean.setCompany(param(request, "company"));
        cvBean.setDuration(param(request, "duration"));
        cvBean.setResponsibilities(param(request, "responsibilities"));
        
        cvBean.setTechnicalSkills(param(request, "technicalSkills"));
        cvBean.setSoftSkills(param(request, "softSkills"));

        if (cvBean.validate()){
            request.setAttribute("cvData", cvBean);
            forward(request, response, "/cvView.jsp");
        } else {
            request.setAttribute("errorMessage", "Your CV could not be generated. Please fix the following:");
            request.setAttribute("errors", cvBean.getErrors());
            forward(request, response, "/cvError.jsp");
        }
    }
    
    //Helpers
    private String param(HttpServletRequest request, String name){
        String value = request.getParameter(name);
        return value == null ? "" : value.trim();
    }
    
    private void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        dispatcher.forward(request, response);
    }
    
    private CVBean createSampleBean(){
        CVBean b = new CVBean();
        b.setFullName("Ali Bin Abu");
        b.setProfessionalTitle("Junior Software Developer");
        b.setEmail("ali123@gmail.com");
        b.setPhone("+60 11 564 34326");
        b.setProfileUrl("https://github.com/ali-abu");
        b.setProfileSummary("Motivated computer science graduate with hands on experience in Java EE web development and a strong interest in building clean, maintainable enterprise applications.");
        
        b.setHighestDegree("Bachelor of Computer Science (Hons.)");
        b.setInstitution("Universiti Teknologi Mara Kampus Kuala Terengganu");
        b.setGraduationYear("2027");
        b.setMajor("Computer Science");
        
        b.setJobTitle("Software Development Intern");
        b.setCompany("Developer Kaki SDN. BHD.");
        b.setDuration("March 2026 - September 2026");
        b.setResponsibilities("Developed REST endpoints with Java Servlets and JSP\n" + "Reduced page load time by 30% through query optimisation\n" + "Collaborated with a 5-member team using Git and Agile practices");
        
        b.setTechnicalSkills("Java, JSP, Servlets, MySQL, HTML, CSS, Git");
        b.setSoftSkills("Teamwork, Commucation, Problem Solving, Time Management");
        return b;
    }
}