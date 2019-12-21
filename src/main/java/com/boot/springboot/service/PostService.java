package com.boot.springboot.service;

import com.boot.springboot.model.Post;

import java.util.List;

public interface PostService {
    void addPost(Post post);
    List<Post> getOwnPosts(String userName);
}
