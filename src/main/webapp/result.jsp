<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Map.Entry" %>
<%@ page import="com.sample.UserData" %>
<%
    Map<String, UserData> users = (Map<String, UserData>) request.getAttribute("users");
    Map<String, String> userIds = (Map<String, String>) request.getAttribute("userIds");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>タレント一覧画面</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h1 class="mt-5">タレント一覧</h1>
        </div>
        <div class="subcontainer">
            <% if (users != null && !users.isEmpty()) { %>
                <% for (Map.Entry<String, UserData> entry : users.entrySet()) { %>
                    <div class="card mb-4">
                        <div class="card-body">
                            <!-- <h5 class="card-title"><%= entry.getKey() %></h5> -->
                            <h5 class="card-text"><%= entry.getValue().getName() %></p>
                            <p class="card-text">ソフトスキル: <%= entry.getValue().getSoftSkill() %></p>
                        </div>
                    </div>
                <% } %>
            <% } else { %>
                <p>該当するユーザーは見つかりませんでした。</p>
            <% } %>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
