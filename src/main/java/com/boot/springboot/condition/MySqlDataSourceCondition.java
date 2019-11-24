package com.boot.springboot.condition;

import org.springframework.context.annotation.Condition;
import org.springframework.context.annotation.ConditionContext;
import org.springframework.core.env.Environment;
import org.springframework.core.type.AnnotatedTypeMetadata;

public class MySqlDataSourceCondition implements Condition {
    @Override
    public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
        Environment env=context.getEnvironment();
        return !env.containsProperty("hsql") || !Boolean.parseBoolean(env.getProperty("hsql"));
    }
}
