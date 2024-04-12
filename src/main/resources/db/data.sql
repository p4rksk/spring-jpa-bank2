--user(3)
insert into user_tb(username, password, fullname, created_at) values('ssar', '1234', '서강준', now());
insert into user_tb(username, password, fullname, created_at) values('cos', '1234', '박보검', now());
insert into user_tb(username, password, fullname, created_at) values('love', '1234', '우도환', now());


--account(5)
insert into account_tb(user_id, number, password, balance, status, created_at) values(1, 1111, '1234', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, created_at) values(2, 2222, '2345', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, created_at) values(3, 3333, '3456', 1000, true ,now());
insert into account_tb(user_id, number, password, balance, status, created_at) values(1, 4444, '5678', 1000, false ,now());
insert into account_tb(user_id, number, password, balance, status, created_at) values(2, 5555, '6789', 1000, false ,now());

--history(10)
-- -- ssar이 cos에게 100원 이체했다. ssar은 잔액 900원 cos는 1100원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 2, 100, 900, 1100 ,now());
-- -- cos가 love에게 100원 이체했다. cos는 잔액 1000원 love는 1100원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(2, 3, 100, 1000, 1100 ,now());
-- -- love가 ssar에게 100원 이체했다. love는 잔액 1000원 ssar은 1000원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(3, 1, 100, 1000, 1000 ,now());
-- -- ssar이 cos에게 100원 이체했다. ssar은 잔액 900원 cos은 1100원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 2, 100, 900, 1100 ,now());
-- -- ssar이 love에게 100원 이체했다. ssar은 잔액 800원 love은 1100원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 3, 100, 800, 1100 ,now());
-- -- ssar이 love에게 100원 이체했다. ssar은 잔액 700원 love은 1200원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 3, 100, 700, 1200 ,now());
-- -- ssar이 cos에게 100원 이체했다. ssar은 잔액 600원 cos은 1200원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 2, 100, 600, 1200 ,now());
-- -- ssar이 cos에게 100원 이체했다. ssar은 잔액 500원 cos은 1300원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 2, 100, 500, 1300 ,now());
-- -- ssar이 love에게 100원 이체했다. ssar은 잔액 400원 love은 1300원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 3, 100, 400, 1300 ,now());
-- -- ssar이 love에게 100원 이체했다. ssar은 잔액 300원 love은 1400원--
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values(1, 3, 100, 300, 1400 ,now());