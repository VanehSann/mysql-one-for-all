DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
    plan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- decimal(3,2) vi na thread da Regislane 19-B
    plan_price DECIMAL(3,2) NOT NULL,
    plan_name CHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name CHAR(20) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;


INSERT INTO SpotifyClone.plans (plan_name, plan_price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.users (user_name, user_age, plan_id)
VALUES
 ('Thati',	23, 1),
 ('Cintia',	35, 2),
 ('Bill',	20, 3),
 ('Roger',	45, 4),
 ('Norman',	58, 4),
 ('Patrick',	33, 2),
 ('Vivian',	26, 3),
 ('Carol',	19, 3),
 ('Angelina',	42, 2),
 ('Paul',	46, 2);
