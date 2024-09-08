<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Q&A Board</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        input {
            margin-right: 10px;
        }
        button {
            padding: 5px 10px;
            font-size: 16px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            cursor: pointer;
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }
        li:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<script src="/resource/faqAi.js" defer="defer"></script>
<body>

    <h1>FAQ System</h1>
    <input type="text" id="questionInput" placeholder="Enter your question" />
    <button onclick="fetchRelatedFaqs()">Search</button>

    <h2>Related FAQs:</h2>
    <ul id="faqList"></ul>

    <h2>Answer:</h2>
    <p id="answer"></p>
</body>
</html>

