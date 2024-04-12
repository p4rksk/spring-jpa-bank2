package com.example.bank.user;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.Optional;

@DataJpaTest //JpaRepository 상속 받으면 따로 import 안해도 됨
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @Test
    public void findByUsernameAndPassword_test(){
        // given
        String username = "ssar";
        String password = "1234";

        // when
        Optional<User> userOP = userRepository.findByUsernameAndPassword(username,password);

        //eye 검증이 끝나면 주석 처리 해놓기
        User user = userOP.get();
        System.out.println(user.getUsername());

        // then
        //Assertions.assertThat(userOP.get()).isNotNull();
        Assertions.assertThat(userOP.get().getUsername()).isEqualTo("ssar");
    }
}
