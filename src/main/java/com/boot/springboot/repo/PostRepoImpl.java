package com.boot.springboot.repo;

import com.boot.springboot.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.List;

@Repository
public class PostRepoImpl implements PostRepo, QueryStatement {
    @Autowired
    JdbcOperations jdbcOperations;

    @Override
    public void addPost(Post post) {
        jdbcOperations.update(ADD_POST, post.getUserName(), post.getPostContent(),
                post.getDate(), post.getPostImage());
    }

    @Override
    public List<Post> getOwnPosts(String userName) {
        return jdbcOperations.query(GET_OWN_POSTS, new Object[]{userName}, this::mapRow);
    }

    @Override
    public List<Post> getOwnPosts(String userName, Integer max) {
        return jdbcOperations.query(GET_OWN_POSTS_LIMIT, new Object[]{userName, max}, this::mapRow);
    }

    @Override
    public List<Post> getPostsBeforeThisDate(Date date) {
        return jdbcOperations.query(GET_POST_BEFORE_THIS, new Object[]{date}, this::mapRow);
    }

    @Override
    public List<Post> getPostsBeforeThisDate(Date date, Integer max) {
        return jdbcOperations.query(GET_POST_BEFORE_THIS_LIMIT, new Object[]{date, max}, this::mapRow);
    }

    @Override
    public List<Post> getAllPosts(Integer max) {
        return jdbcOperations.query(GET_ALL_POSTS_LIMIT, new Object[]{max}, this::mapRow);
    }

    private Post mapRow(ResultSet rs, int arg1) throws SQLException {
        Post post = new Post();
        post.setId(rs.getInt("id"));
        post.setUserName(rs.getString("username"));
        post.setPostContent(rs.getString("post"));
        post.setDate(rs.getDate("date"));
        post.setPostImage(rs.getString("photo"));
        return post;
    }

}
