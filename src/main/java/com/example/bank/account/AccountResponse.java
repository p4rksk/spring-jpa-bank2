package com.example.bank.account;

import lombok.Data;

import java.util.List;

public class AccountResponse {


    //메인 화면 DTO
    @Data
    public static class MainDTO{
        private int userId;
        private String fullname;

        private List<AccountDTO> accounts;

        public MainDTO(List<Account> accountList) {
            this.userId = accountList.get(0).getUser().getId();
            this.fullname = accountList.get(0).getUser().getFullname();
            this.accounts = accountList.stream().map(AccountDTO::new).toList();
        }

        //메인화면 List<AccountDTO>의 DTO
        @Data
        class AccountDTO {
            private Long accountId;
            private Integer number;
            private Long balance;

            public AccountDTO(Account account) {
                this.accountId = account.getId();
                this.number = account.getNumber();
                this.balance = account.getBalance();
            }
        }
    }
}