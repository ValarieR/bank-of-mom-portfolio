INSERT INTO admin_users(user_name, password)
VALUES 
    ('valarie', '12345'),
    ('michael', '54321'),
    ('betty', '13579'),
    ('al', '97531');

INSERT INTO accounts(balance)
VALUES(0);

INSERT INTO user_children(child_name, account_id)
VALUES
    ('sy', 1),
    ('anya', 2),
    ('ty', 3);

INSERT INTO transactions(transaction_type, amount)
VALUES
    ('c', 50),
    ('c', 50),
    ('c', 50);

INSERT INTO accounts_transactions(account_id, transaction_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

UPDATE accounts
SET balance = balance + 50;

INSERT INTO users_children(parent_id, child_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);