package com.example.bank.account;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AccountRepository extends JpaRepository<Account, Integer> {

    @Query("select ac from Account ac join fetch ac.user u where ac.user.id = :userId")
    List<Account> findByUserId(@Param("userId") Integer userId);
}