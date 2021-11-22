package dal;

import db.SQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Article;

public class ArticleDAO extends BaseDAO<Article> {

    public Article get(int id, String username) {
        String query = "SELECT * FROM dbo.Article a\n"
                + "WHERE a.author = ?\n"
                + "AND a.ID = ?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);
            pre.setInt(2, id);
            pre.setString(1, username);
            rs = pre.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt(1);
                String title = rs.getString(2);

                String content = rs.getString("Content");
                Timestamp time = rs.getTimestamp(5);
                String author = rs.getString(6);
                System.out.println("Content: "+content);
                return new Article(id, title, content, time, author);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    public List<Article> getAllArticles() {
        String query = "SELECT a.id,a.Title,a.Content,a.[Time],a.author\n"
                + "FROM dbo.Article a";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        List<Article> articles = new LinkedList<>();
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);
            rs = pre.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);

                String content = rs.getString(3);
                Timestamp time = rs.getTimestamp(4);
                String author = rs.getString(5);

                Article a = new Article(id, title, content, time, author);
                a.setAuthor(author);
                articles.add(a);
            }
        } catch (SQLException ex) {

        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return articles;
    }

    public List<Article> getArticles(String username) {
        String query = "SELECT * FROM dbo.Article a\n"
                + "WHERE a.author = ?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        List<Article> articles = new LinkedList<>();
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);
            pre.setString(1, username);
            rs = pre.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);

                String content = rs.getString(4);
                Timestamp time = rs.getTimestamp(5);
                String author = rs.getString(6);
                articles.add(new Article(id, title, content, time, author));
            }
        } catch (SQLException ex) {
            System.out.println("getArticles " + ex.getMessage());
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return articles;
    }

    public void Update(String title, String content, String article, Integer id) {
        Connection conn = null;
        PreparedStatement pre = null;
        String query = "UPDATE dbo.Article\n"
                + "SET \n"
                + "Title = ?,\n"
                + "Content = ?\n"
                + "WHERE author = ?\n"
                + "AND ID = ?";
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);

            pre.setString(1, title);
            pre.setString(2, content);
            pre.setString(3, article);
            pre.setInt(4, id);
            pre.executeUpdate();
        } catch (SQLException ex) {

        } finally {
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void AddNewArticle(String title, String content, String article) throws SQLException {
        Connection conn = null;
        PreparedStatement pre = null;
        String query = "INSERT INTO Article ([Title], [Content], [author])\n"
                + "VALUES (?,?,?);";
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);
            pre.setString(1, title);
            pre.setString(2, content);
            pre.setString(3, article);
            pre.executeUpdate();
        } catch (SQLException ex) {
            throw ex;

        } finally {
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    @Override
    public Article get(int id) {
        String query = "SELECT * FROM dbo.Article a\n"
                + "WHERE a.ID = ?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            conn = SQLConnection.getConnection();
            pre = conn.prepareCall(query);
            pre.setInt(1, id);
            rs = pre.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("id");
                String title = rs.getString("title");

                String content = rs.getString("content");
                Timestamp time = rs.getTimestamp("time");
                String author = rs.getString("author");

                Article a = new Article(id, title, content, time, author);
                a.setAuthor(author);
                return a;
            }
        } catch (SQLException ex) {
            try {
                throw ex;
            } catch (SQLException ex1) {
                Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (pre != null) {
                try {
                    pre.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

}
