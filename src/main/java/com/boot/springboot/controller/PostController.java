package com.boot.springboot.controller;

import com.boot.springboot.model.Post;
import com.boot.springboot.repo.PostRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Part;
import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@Controller
@RequestMapping("/post")
public class PostController {
    @Autowired
    PostRepo postRepo;

    @GetMapping("/{userName}/add")
    public String addPost(Model model,@PathVariable(name = "userName")String userName) {
        Post post=new Post();
        post.setUserName(userName);
        post.setDate(new Date(System.currentTimeMillis()));
        model.addAttribute("postData", post);
        return "post_form";
    }

    @PostMapping("/add")
    public String addPost(RedirectAttributes model,@RequestPart("postPhoto")Part postPic,
                          @ModelAttribute("postData")@Valid Post postData, Errors errors) throws IOException {
        if(errors.hasErrors()) {
            System.out.println(errors.getAllErrors().get(0));
            return "post_form";
        }
        if(postPic.getSize()!=0) {
            String filePath="/home/aparna/test/post/"+postPic.getSubmittedFileName();
            postPic.write(filePath);
            postData.setPostImage(filePath);
        }
        postRepo.addPost(postData);
        model.addAttribute("userName",postData.getUserName());
        return "redirect:/post/{userName}/posts";
    }

    @GetMapping("/{userName}/posts")
    public String myPost(Model model,@PathVariable(name = "userName")String userName) throws IOException{
        List<Post> myPosts=postRepo.getOwnPosts(userName);
        List<String> photos =new ArrayList<>();
        for(Post post:myPosts) {
            if (post.getPostImage()!=null && post.getPostImage().length()!=0) {
                FileInputStream in=new FileInputStream(new File(post.getPostImage()));
                byte[] postImage=new byte[in.available()];
                in.read(postImage);
                in.close();
                String imageBase64= Base64.getEncoder().encodeToString(postImage);
                photos.add(imageBase64);
            }
            else {
                photos.add("");
            }
        }

        model.addAttribute("userName",userName);
        model.addAttribute("posts",myPosts);
        model.addAttribute("photos",photos);
        return "my_post";
    }
}
