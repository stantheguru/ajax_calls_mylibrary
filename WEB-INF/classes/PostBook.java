import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;
import org.json.JSONObject;
import org.JSON.JSONArray;


@WebServlet("/post_book")
public class PostBook extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException{
		JSONObject jdata = new JSONObject();

		jdata.put("book_name", "The Alchemist");
		jdata.put("author", "Paulo Coelho");

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(jdata.toString());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException{

		String book_name = request.getParameter("book_name");
		String author = request.getParameter("author");

		System.out.println("Book Name: "+book_name);
		
		JSONObject json = new JSONObject();
		json.put("message", "success");
		json.put("book_name", book_name);
		json.put("author", author);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json.toString());


	}


}