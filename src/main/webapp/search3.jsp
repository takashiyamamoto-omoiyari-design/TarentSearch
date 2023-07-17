<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>タレント検索画面</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
    <!-- 追加のスタイルシート -->
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h1 class="mt-5">タレント検索</h1>
            <h4>最新データベースより貴社の求人条件に合致した候補者を検索できます。</h4>
        </div>
        <br>
        <div class="subcontainer">
            <form action="SearchServlet" method="POST">
                <h2>検索条件を設定</h2>
                <div class="mb-3">
                    <label for="task" class="form-label">業務</label>
                    <input type="text" id="task" name="task" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="skill" class="form-label">スキル</label>
                    <input type="text" id="task" name="task" class="form-control">
                </div>
                <!-- 
                <div class="mb-3">
                    <label for="job" class="form-label">職種</label>
                    <input type="text" id="job" name="job" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="industry" class="form-label">業種</label>
                    <input type="text" id="industry" name="industry" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="age" class="form-label">年齢</label>
                    <input type="text" id="age" name="age" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="gender" class="form-label">性別</label>
                    <input type="text" id="gender" name="gender" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="academic" class="form-label">学歴</label>
                    <input type="text" id="academic" name="academic" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="language" class="form-label">語学力</label>
                    <input type="text" id="language" name="language" class="form-control">
                </div>
                -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-lg">候補者を検索する</button>
                </div>

            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
