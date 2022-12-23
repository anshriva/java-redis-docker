package org.anubhav;

import io.lettuce.core.api.StatefulRedisConnection;
import io.lettuce.core.api.sync.RedisCommands;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class RedisBeanInitializer {
    @Bean
    public RedisCommands<String, String> GetRedisSyncCommand(){
        io.lettuce.core.RedisClient client = io.lettuce.core.RedisClient.create(System.getenv("redis_connection_string"));
        StatefulRedisConnection<String, String> connection = client.connect();
        return connection.sync();
    }
}
