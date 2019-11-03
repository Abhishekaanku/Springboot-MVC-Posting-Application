package com.boot.springboot.repo;

public interface QueryStatement {
    String ADD_POST = "insert into posts (username,post,date,photo) values(?,?,?,?)";
    String GET_ALL_POSTS_LIMIT = "select * from posts order by date desc limit ?";
    String GET_POST_BEFORE_THIS = "select * from posts where data<=? order by desc date";
    String GET_POST_BEFORE_THIS_LIMIT = "select * from posts where data<=? order by date desc limit ?";

    String GET_OWN_POSTS = "select * from posts where username=? order by date desc";
    String GET_OWN_POSTS_LIMIT = "select * from posts where username=? order by date desc limit ?";


    String ADD_User = "insert into users values(?,?,?,?,?,?,?,?)";
    String VALIDATE_USER = "select * from users where username=? and password=?";
    String GET_USER = "select * from users where username=?";

}
