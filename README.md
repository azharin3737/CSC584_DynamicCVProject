# Dynamic Online CV Builder
CSC584 Enterprise Programming - Individual Assignment (Semester 20264)

**Name:** AHMAD DANISH AZHARIN BIN AHMAD JOSLI
**Student ID:** 2026132067

## Description
A Java EE web application that builds a CV dynamically, following the MVC pattern.
- **Model:** `CVBean` (com.cvbuilder.model)
- **Controller:** `CVServlet` (com.cvbuilder.controller), mapped in `web.xml`
- **View:** `cvForm.jsp`, `cvView.jsp`, `cvError.jsp`, `css/style.css`

## Features
- Create a custom CV through a form (POST flow)
- Preview a sample CV (GET flow: `CVServlet?action=sample`)
- Server-side validation with an error page

## How to run
1. Requirements: JDK 17+, GlassFish 8 (Jakarta EE), NetBeans, Maven
2. Open the project in NetBeans, then Clean and Build
3. Run, then open `http://localhost:8080/DynamicCvProject/`

## Report
See `CSC584 INDIVIDUAL ASSIGNMENT 4C1 2026132067 AHMAD DANISH AZHARIN BIN AHMAD JOSLI.pdf`
