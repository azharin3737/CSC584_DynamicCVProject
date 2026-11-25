/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.dynamiccvproject.model;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 *
 * @author AHMAD DANISH AZHARIN BIN AHMAD JOSLI 2026132067
 * Ini ialah Model
 */
public class CVBean {
    private static final Pattern EMAIL_PATTERN = Pattern.compile("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$");
    private static final Pattern PHONE_PATTERN = Pattern.compile("^[0-9+\\-\\s()]{7,20}$");
    private static final Pattern YEAR_PATTERN = Pattern.compile("^(19|20)\\d{2}$");
    
    //Personal info
    private String fullName, professionalTitle, email, phone, profileUrl, profileSummary;
    
    //Education
    private String highestDegree, institution, graduationYear, major;
    
    //Experience
    private String jobTitle, company, duration, responsibilities;
    
    //Skills
    private String technicalSkills, softSkills; //Will be seperated by comma
    
    private List<String> errors = new ArrayList<>();
    
    //Zero argument constructor
    public CVBean(){}
    
    //Validation
    public boolean validate(){
        errors.clear();
        
        if(isBlank(fullName)){
            errors.add("Full Name is required.");
        }
        
        if(isBlank(email)){
            errors.add("Email is required.");
        } else if(!EMAIL_PATTERN.matcher(email.trim()).matches()){
            errors.add("Email format is invalid (Example: name@example.com).");
        }
        
        if(isBlank(highestDegree)){
            errors.add("Highest Degree is required.");
        }
        
        if(getTechnicalSkillList().isEmpty() && getSoftSkillList().isEmpty()){
            errors.add("At least one skill is required. (Technical/Soft)");
        }
        
        //Optional fields - Validate when provided
        if(!isBlank(phone) && !PHONE_PATTERN.matcher(phone.trim()).matches()){
            errors.add("Phone Number is malformed (digits, +, -, spaces and brackets only).");
        }
        
        if(!isBlank(graduationYear) && !YEAR_PATTERN.matcher(graduationYear.trim()).matches()){
            errors.add("Year of Graduation must be a 4-digit year (e.g. 2026.)");
        }
        
        if(!isBlank(profileUrl) && !profileUrl.trim().matches("^https?://\\S+$")){
            errors.add("LinkedIN/GitHub URL must start with http:// or https://.");
        }
        
        return errors.isEmpty();
    }

    private boolean isBlank(String s){
        return s == null || s.trim().isEmpty();
    }
    
    //Helpers for the view
    public List<String> getTechnicalSkillList(){
        return split(technicalSkills);
    }
    
    public List<String> getSoftSkillList(){
        return split(softSkills);
    }
    
    private List<String> split(String csv){
        List<String> list = new ArrayList<>();
        
        if(csv != null){
            for(String s : csv.split(",")){
                if(!s.trim().isEmpty()){
                    list.add(s.trim());
                }
            }
        }
        
        return list;
    }
    
    public List<String> getErrors(){
        return errors;
    }
    
    //Getter and Setter methods
    public String getFullName() {
        return fullName;
    }

    public String getProfessionalTitle() {
        return professionalTitle;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getProfileUrl() {
        return profileUrl;
    }

    public String getProfileSummary() {
        return profileSummary;
    }

    public String getHighestDegree() {
        return highestDegree;
    }

    public String getInstitution() {
        return institution;
    }

    public String getGraduationYear() {
        return graduationYear;
    }

    public String getMajor() {
        return major;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public String getCompany() {
        return company;
    }

    public String getDuration() {
        return duration;
    }

    public String getResponsibilities() {
        return responsibilities;
    }

    public String getTechnicalSkills() {
        return technicalSkills;
    }

    public String getSoftSkills() {
        return softSkills;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setProfessionalTitle(String professionalTitle) {
        this.professionalTitle = professionalTitle;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setProfileUrl(String profileUrl) {
        this.profileUrl = profileUrl;
    }

    public void setProfileSummary(String profileSummary) {
        this.profileSummary = profileSummary;
    }

    public void setHighestDegree(String highestDegree) {
        this.highestDegree = highestDegree;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setResponsibilities(String responsibilities) {
        this.responsibilities = responsibilities;
    }

    public void setTechnicalSkills(String technicalSkills) {
        this.technicalSkills = technicalSkills;
    }

    public void setSoftSkills(String softSkills) {
        this.softSkills = softSkills;
    }
}