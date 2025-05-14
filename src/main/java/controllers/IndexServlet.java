package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import models.Task;
import utils.DBUtil;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet({"/index", "/"})
public class IndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        List<Task> tasks = em.createNamedQuery("getAllTasks", Task.class)
                                   .getResultList();

        em.close();

        // ★★★ この行を追加 ★★★
        System.out.println("DEBUG: IndexServlet - 取得したタスク数: " + tasks.size());

        request.setAttribute("tasks", tasks);

        // ★★★ この部分を追加 ★★★
        System.out.println("DEBUG: IndexServlet - タスクリストの内容:");
        if (tasks != null && !tasks.isEmpty()) {
            for (Task task : tasks) {
            System.out.println("  ID: " + task.getId() + ", Content: " + task.getContent());
            }
        } else {
        System.out.println("  タスクリストは空または null です。");
        }
        // ★★★ 追加ここまで ★★★
        
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/tasks/index.jsp");
        rd.forward(request, response);
    }


}
