package com.boot.springboot.model;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import java.util.HashMap;
import java.util.Map;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UserSession {
    Map<String, Boolean> loggedInUser;

    UserSession() {
        loggedInUser = new HashMap<>();
    }

    public void logIn(String userName) {
        loggedInUser.put(userName, true);
    }

    public void logOut(String userName) {
        loggedInUser.put(userName, false);
    }

    public boolean isLoggedIn(String userName) {
        return loggedInUser.containsKey(userName) && loggedInUser.get(userName);
    }

    public String getActiveUser() {
        if (loggedInUser.isEmpty()) {
            return null;
        }
        for (String userName : loggedInUser.keySet()) {
            if (loggedInUser.get(userName)) {
                return userName;
            }
        }
        return null;
    }
}
