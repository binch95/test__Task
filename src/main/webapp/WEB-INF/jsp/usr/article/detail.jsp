<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CRUD Detail</title>


<section class="mt-24 text-xl px-4">
	<div class="mx-auto">
		<table class="table" border="1" cellspacing="0" cellpadding="5" style="width: 100%; border-collapse: collapse;">
			<tbody>
				<tr>
					<th style="text-align: center;">ID</th>
					<td style="text-align: center;">${articled.id}</td>
				</tr>
				<tr>
					<th style="text-align: center;">Registration Date</th>
					<td style="text-align: center;">${articled.regDate }</td>
				</tr>
				<tr>
					<th style="text-align: center;">Modified date</th>
					<td style="text-align: center;">${articled.updateDate}</td>
				</tr>
				<tr>
					<th style="text-align: center;">Title</th>
					<td style="text-align: center;">${articled.title}</td>
				</tr>

				<tr>
					<th style="text-align: center;">Body</th>
					<td style="text-align: center;">${articled.body}</td>
				</tr>

			</tbody>
		</table>
		<div class="btns">
			<button class="btn" type="button" onclick="history.back()">뒤로가기</button>

			<a class="btn" href="../article/modify?id=${articled.id }">수정</a> <a class="btn"
				href="../article/doDelete?id=${articled.id }">삭제</a>


		</div>
	</div>
</section>