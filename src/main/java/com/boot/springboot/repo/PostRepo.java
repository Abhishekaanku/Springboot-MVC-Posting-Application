package com.boot.springboot.repo;

import com.boot.springboot.model.Post;

import java.sql.Date;
import java.util.List;

public interface PostRepo {
    void addPost(Post post);

    List<Post> getOwnPosts(String userName);

    List<Post> getOwnPosts(String userName, Integer max);

    List<Post> getPostsBeforeThisDate(Date date);

    List<Post> getPostsBeforeThisDate(Date date, Integer max);

    List<Post> getAllPosts(Integer max);
}
