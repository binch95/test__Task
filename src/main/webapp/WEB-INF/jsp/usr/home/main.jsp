<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CRUD 게시판</title>


<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin: auto;
	overflow: hidden;
}

h1, h2 {
	color: #333;
}

.form-container {
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	margin-bottom: 20px;
}

form label {
	display: block;
	margin-top: 10px;
}

input[type="text"], textarea {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

.posts {
	background: #fff;
	padding: 20px;
	border-radius: 5px;
}

.post-item {
	margin-bottom: 15px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.post-item button {
	background-color: #dc3545;
}

.post-item button:hover {
	background-color: #c82333;
}
.fqa>a{
display: flex;
justify-content: flex-end;
}
</style>

</head>
<body>
	<div class="container">
		<h1>CRUD 게시판</h1>
		<div class="fqa"><a href="../service/center">FAQ</a></div>
		<div class="form-container">
			<h2>새 게시물 작성</h2>
			<form action="../article/doWrite" id="postForm">
				<label for="title">제목:</label> <input type="text" name="title"
					required> <label for="content">내용:</label>
				<textarea name="body" required></textarea>
				<button type="submit">게시물 추가</button>
			</form>
		</div>

		<div class="posts">
		
			<h2>게시물 목록</h2>
			<table class="table" border="1" cellspacing="0" cellpadding="5"
				style="width: 100%; border-collapse: collapse;">
				<thead>
					<tr>
						<th style="text-align: center;">ID</th>
						<th style="text-align: center;">Registration Date</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Body</th>
					</tr>
				</thead>
				<tbody>
						<%-- 		${articles} --%>
					<c:forEach var="article" items="${articles }">
						<tr class="hover">
							<td style="text-align: center;">${article.id}</td>
							<td style="text-align: center;">${article.regDate }</td>
							<td style="text-align: center;"><a class="hover:underline"
								href="../article/detail?id=${article.id}">${article.title}</a></td>
							<td style="text-align: center;">${article.body }</td>	
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
