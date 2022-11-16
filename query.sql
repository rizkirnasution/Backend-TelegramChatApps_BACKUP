CREATE DATABASE db_telegram_chat;
CREATE TABLE chats
(
  id           VARCHAR   NOT NULL,
  sender       VARCHAR   NOT NULL,
  receiver     VARCHAR   NOT NULL,
  chat         VARCHAR   NOT NULL,
  chat_type    VARCHAR   NULL    ,
  is_deleted   VARCHAR NULL,
  notif        VARCHAR NULL,
  date         TIMESTAMP NULL    ,
  UNIQUE(id)
);

CREATE TABLE users
(
  id       VARCHAR   NOT NULL,
  username VARCHAR   NOT NULL,
  email    VARCHAR   NOT NULL,
  password VARCHAR   NOT NULL,
  photo    TEXT      NULL    ,
  phone    VARCHAR   NULL    ,
  bio      VARCHAR   NULL    
);