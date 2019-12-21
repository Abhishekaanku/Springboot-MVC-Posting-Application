package com.boot.springboot.service.impl;

import com.boot.springboot.model.Post;
import com.boot.springboot.repo.PostRepo;
import com.boot.springboot.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class PostServiceImpl implements PostService {
    @Autowired
    PostRepo postRepo;

    @Override
    public void addPost(Post post) {
        postRepo.addPost(post);
    }

    @Override
    public List<Post> getOwnPosts(String userName) {
        return postRepo.getOwnPosts(userName);
    }
}
