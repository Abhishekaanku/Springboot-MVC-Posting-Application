package com.boot.springboot.repo;

import java.util.List;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class UserRepoImpl implements UserRepo, QueryStatement {

    @Autowired
    JdbcTemplate jdbcTemplate;

    private final RowMapper<User> userRowMapper = (rs, rowNum) -> {
        User user = new User();
        user.setUserName(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setFirstName(rs.getString("firstname"));
        user.setLastName(rs.getString("lastname"));
        user.setEmail(rs.getString("email"));
        user.setAddress(rs.getString("address"));
        user.setPhone(rs.getLong("phone"));
        user.setProfilePicture(rs.getString("picture"));
        return user;
    };

    public void register(User user) {

        jdbcTemplate.update(ADD_User, user.getUserName(), user.getPassword(), user.getFirstName(),
                user.getLastName(), user.getEmail(), user.getAddress(), user.getPhone(), user.getProfilePicture());

    }

    public boolean validateUser(Login login) {

        List<User> users = jdbcTemplate.query(VALIDATE_USER, new String[]{login.getUserName(), login.getPassword()},
                userRowMapper);
        return users.size() > 0;

    }

    @Override
    public User getUser(String userName) {
        List<User> users = jdbcTemplate.query(GET_USER, new String[]{userName},
                userRowMapper);
        return users.size()==0?null:users.get(0);
    }
}