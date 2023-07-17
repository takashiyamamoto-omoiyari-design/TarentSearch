<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タレント検索画面</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
		<div>
	    	<h1>タレント検索</h1> 
	    	<h4>最新データベースより貴社の求人条件に合致した候補者を検索できます。</h4>  
    	</div>
    	<br>
    	<div class="subcontainer">
	        <form action="SearchServlet" method="POST">
	        	<h2>検索条件を設定</h2>
			        <label for="task">業務</label>+職種を入力<input type="text" name="task"><br><br>
			        <label for="job">職種</label><a href="" class="item">+職種を選択</a><br><br>
			        <label for="industry">業種</label><a href="" class="item">+業種を選択</a><br><br>
			        <label for="age">年齢</label><a href="" class="item">+年齢を選択</a><br><br>
			        <label for="gender">性別</label><a href="" class="item">+性別を選択</a><br><br>
			        <label for="academic">学歴</label><a href="" class="item">+学歴を選択</a><br><br>
			        <label for="language">語学力</label><a href="" class="item">+語学力を選択</a><br><br>	
				<div class="example2">
	    			<!-- <a href="#">候補者を検索する</a> -->
	    			<center><button type="submit" style="width: 200px; height: 50px; font-size: 120%;">候補者を検索する</button></center>
				</div>      
	        </form>
		</div>        
    </div>
</body>
</html>