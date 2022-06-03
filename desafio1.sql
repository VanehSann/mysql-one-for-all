DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

-- criando tabela de planos
-- plan_id, plan_price e plan_name
CREATE TABLE SpotifyClone.plans(
    plan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- decimal(3,2) vi na thread da Regislane 19-B
    plan_price DECIMAL(3,2) NOT NULL,
    plan_name CHAR(20) NOT NULL
) engine = InnoDB;

-- criando tabela de users
-- user_id, user_age, user_name, plan_id e subscription_date
CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name CHAR(20) NOT NULL,
    user_age INT NOT NULL,
    subscription_date CHAR(20) NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;


INSERT INTO SpotifyClone.plans (plan_name, plan_price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.users (user_name, user_age, plan_id, subscription_date)
VALUES
 ('Thati',	23, 1, '2019-10-20'),
 ('Cintia',	35, 2, '2017-12-30'),
 ('Bill',	20, 3, '2019-06-05'),
 ('Roger',	45, 4, '2020-05-13'),
 ('Norman',	58, 4, '2017-02-17'),
 ('Patrick',	33, 2, '2017-01-06'),
 ('Vivian',	26, 3, '2018-01-05'),
 ('Carol',	19, 3, '2018-02-14'),
 ('Angelina',	42, 2, '2018-04-29'),
 ('Paul',	46, 2, '2017-01-17');
