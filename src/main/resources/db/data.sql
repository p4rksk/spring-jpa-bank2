insert into user_tb(username, password, fullname, created_at) values('ssar', '1234', '서강준', now());
insert into user_tb(username, password, fullname, created_at) values('cos', '1234', '박보검', now());
insert into user_tb(username, password, fullname, created_at) values('love', '1234', '우도환', now());

insert into account_tb(user_id, number, password, balance, status, createdAt) values(1, 1111, '1234', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, createdAt) values(2, 2222, '2345', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, createdAt) values(3, 3333, '3456', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, createdAt) values(1, 4444, '4567', 1000, false ,now());
insert into account_tb(user_id, number, password, balance, status, createdAt) values(2, 5555, '5678', 1000, false ,now());

-- ssar이 cos에게 1000원 이체했다. ssar은 잔액 0원 cos는 2000원--
insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(sender_account_id, receiver_account_id, 1000, 0, 2000 ,now());
-- cos가 love에게 1000원 이체했다. cos는 잔액 1000원 love는 2000원--
insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(sender_account_id, receiver_account_id, 1000, 0, 2000 ,now());
-- love가 ssar에게 1000원 이체했다. love는 잔액 1000원 ssar은 1000원--
insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(sender_account_id, receiver_account_id, 1000, 1000, 1000 ,now());
-- ssar이 cos에게 1000원 이체했다. ssar은 잔액 0원 cos은 1000원--
insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(sender_account_id, receiver_account_id, 1000, 0, 1000 ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());
-- insert into history_tb(sender_id, receiver_id, amount, senderBalance, receiverBalance, createdAt) values(2, '5555', '5678', 1000, false ,now());