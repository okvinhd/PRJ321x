package controller;

import controller.BaseController;
import dal.ArticleDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;

public class AuthorController extends BaseController {

    ArticleDAO articleDAO = new ArticleDAO();

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String title = req.getParameter("title");
            String content = req.getParameter("content");
            String author = (String) req.getSession(true).getAttribute("login");
            articleDAO.AddNewArticle(title, content, author);
            req.setAttribute("message", "Add success");
            processGet(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(AuthorController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String author = (String) req.getSession(true).getAttribute("login");
        List<Article> articles = articleDAO.getArticles(author);
        req.setAttribute("list", articles);
        req.getRequestDispatcher("Author.jsp").forward(req, resp);
    }

}
