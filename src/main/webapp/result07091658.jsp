<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Map.Entry" %>
<%
    Map<String, String> userIds = (Map<String, String>) request.getAttribute("userIds");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タレント一覧画面</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
	    <h1>タレント一覧</h1>
	    <!-- 
	    <p>ようこそ、<%= request.getParameter("task") %>さん！</p>
	    <h1>検索結果</h1>
	    -->
	    <br>
    	<div class="subcontainer">
			 <% if (userIds != null && !userIds.isEmpty()) { %>
			     <ul>
			         <% for (Map.Entry<String, String> entry : userIds.entrySet()) { %>
			             <li><%= entry.getKey() %> - <%= entry.getValue() %></li>
			         <% } %>
			     </ul>
			 <% } else { %>
			     <p>該当するユーザーは見つかりませんでした。</p>
			 <% } %>
		</div>
	</div>
</body>
</html>
