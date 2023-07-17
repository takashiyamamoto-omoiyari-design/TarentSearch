

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.UserData;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 文字エンコーディングを UTF-8 に設定
        request.setCharacterEncoding("UTF-8");
        
        String task = request.getParameter("task");

        if (task != null && task.equals("SNS毎日投稿")) {

//        	// ユーザーIDと名前のマップを生成
//            Map<String, String> userIds = generateUserIds();
//            // リクエスト属性にユーザーIDの配列を設定
//            request.setAttribute("userIds", userIds);
            
            Map<String, UserData> users = generateUsers();
            request.setAttribute("users", users);

            // result.jspにフォワード
            RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
            dispatcher.forward(request, response);
        }  
	}
	
	private Map<String, String> generateUserIds() {
	    Map<String, String> userIds = new HashMap<>();

	    for (int i = 0; i < 5; i++) {
	        String userId = "user" + (i + 1);
	        String name = "User " + (i + 1);
	        userIds.put(userId, name);
	    }

	    return userIds;
	}
	
    private Map<String, UserData> generateUsers() {
        Map<String, UserData> users = new HashMap<>();

        for (int i = 1; i <= 5; i++) {
            String userId = "user" + i;
            String name = "User " + i;
            String softSkill = generateSoftSkill();

            UserData userData = new UserData(name, softSkill);
            users.put(userId, userData);
        }

        return users;
    }

    private String generateSoftSkill() {
        // 任意の50文字のソフトスキルを生成するロジックを追加する
        // ここではダミーのソフトスキルデータを生成しています
        return "Soft Skill " + ((int) (Math.random() * 100));
    }

}
