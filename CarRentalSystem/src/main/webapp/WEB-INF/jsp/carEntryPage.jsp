<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Entry Page</title>
<style>
  /* Body and Background */
  body {
    background-color: #000;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: #ffd700;
  }

  /* Centered Container */
  div[align="center"] {
    width: 400px;
    margin: 100px auto;
    padding: 20px;
    background-color: #111;
    border-radius: 10px;
    border: 1px solid #ffd700;
  
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2em;
    color: #ffd700;
    text-transform: uppercase;
    margin-bottom: 20px;
    border-bottom: 2px solid #ffd700;
    display: inline-block;
    padding-bottom: 10px;
  }

  h2 {
    font-size: 1.2em;
    color: #ffd700;
    margin-bottom: 15px;
  }

  /* Form Styles */
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  /* Input Field Styles */
  form input[type="text"],
  form input[type="number"],
  form input[list] {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ffd700;
    border-radius: 5px;
    background-color: #222;
    color: #ffd700;
    font-size: 1em;
    text-align: center;
  }

  /* Button Styles */
  form button {
    width: 45%;
    padding: 10px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    background-color: #ffd700;
    color: #000;
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  form button[type="reset"] {
    background-color: #222;
    border: 1px solid #ffd700;
  }

  form button:hover {
    background-color: #e6c200;
  }

  form button[type="reset"]:hover {
    background-color: #333;
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #ffd700;
    text-align: left;
    margin-bottom: 5px;
  }
</style>
</head>

<body>
  <div align="center">
    <h1><u>Car Entry Page</u></h1>
    <h2>
      <form:form action="/carAdd" method="post" modelAttribute="carRecord">
        <form:hidden path="available" />
        Enter Car Registration Number: <form:input path="carNumber" />
        <br /><br />
        Enter Car Name: <form:input path="carName" />
        <br /><br />
        Enter Car color: <form:input path="carColor" />
        <br /><br />
        Enter Manufacturer Name: <form:input path="manufacturer" />
        <br /><br />
        Enter Year of Manufacture: <form:input path="yearOfMfg" />
        <br /><br />
        Enter Rent Rate/Hour: <form:input path="rentRate" />
        <br /><br />
        Select Variant Id: <form:input list="variants" path="variantId" />
        <datalist id="variants">
          <c:forEach items="${variantIdList}" var="vids">
            <option value="${vids}"></option>
          </c:forEach>
        </datalist>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </form:form>
    </h2>
  </div>
</body>
</html>
