<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<html>
<body>
<% 
String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String ope = request.getParameter("operation");
        
        
        double num1 = 0;
        double num2 = 0;
        double result = 0;
        String message = "";
        
        try {
            
            num1 = Double.parseDouble(num1Str);
            num2 = Double.parseDouble(num2Str);
            
         
            switch (ope) {
                case "add":
                    result = num1 + num2;
                    message = "addition: " + result;
                    break;
                case "sub":
                    result = num1 - num2;
                    message = "subtraction: " + result;
                    break;
                case "mul":
                    result = num1 * num2;
                    message = "multiplication: " + result;
                    break;
                case "div":
                    if (num2 != 0) {
                        result = num1 / num2;
                        message = "division: " + result;
                    } else {
                        message = "Error.";
                    }
                    break;
                default:
                    message = "Invalid operation selected.";
                    break;
            }
        } catch (NumberFormatException e) {
            msg = "Error: Invalid Number Entered.";
        }
    %>
    
    <p><strong><%= msg %></strong></p>


</body>
</html>