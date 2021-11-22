package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Article implements Serializable {

    private int id;
    private String title;
    private String contentSummary;
    private String content;
    private Timestamp postTime;
    private String author;
    private String status;

    public Article() {
    }

    public Article(int id, String title, String content, Timestamp postTime, String author) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.postTime = postTime;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public String getContentSummary() {
        if (content.length() > 10) {
            return content.substring(0, (content.length() > 300) ? 300 : content.length());
        }
        return content;
    }

    public void setContentSummary(String contentSummary) {
        this.contentSummary = contentSummary;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPostTime() {
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        return formatter.format(postTime);
    }

    public void setPostTime(Timestamp postTime) {
        this.postTime = postTime;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

}
