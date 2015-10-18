<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello world Page</title>
</head>
<body>
<p>
書籍情報<br />
<form action="/book-master/book/update" method="post">
<table border="1">
  <tr>
    <th>項目</th><th>情報</th>
  </tr>
  <tr>
    <td>ID</td><td>${book.id} <input type="hidden" name="id" value="${book.id}"></td>
  </tr>
  <tr>
    <td>タイトル</td><td><input type="text" name="title" value="${book.title}"></td>
  </tr>
  <tr>
    <td>定価</td><td><input type="text" name="price" value="${book.price}"></td>
  </tr>
  <tr>
    <td>ページ数</td><td><input type="text" name="nbOfPage" value="${book.nbOfPage}"></td>
  </tr>
</table>
  <input type="submit" value="更新">
</form>
</p>
<p>
<a href="/book-master/sample">一覧へ</a>
</p>
</body>
</html>