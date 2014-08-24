CREATE TABLE `account` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) DEFAULT NULL COMMENT '微信账户名',
  `password` varchar(50) DEFAULT NULL COMMENT '微信密码',
  `Original_Id` int(9) DEFAULT NULL COMMENT '原始ID',
  `AppId` varchar(30) DEFAULT NULL COMMENT '开发者ID',
  `AppSecret` varchar(50) DEFAULT NULL COMMENT '开发者密码',
  `URL` varchar(200) DEFAULT NULL COMMENT '服务器配置URL',
  `Token` varchar(30) DEFAULT NULL COMMENT 'Token',
  PRIMARY KEY (`id`)
)

CREATE TABLE `key_word` (
  `id` int(9) NOT NULL COMMENT '主键',
  `ACCOUNT_ID` int(9) DEFAULT NULL COMMENT '账户ID',
  `TYPE` varchar(2) DEFAULT NULL COMMENT '关键词类型（1全匹配，2模糊匹配）',
  `KEY_WORD` varchar(30) DEFAULT NULL COMMENT '关键词',
  `CREATED_DATE` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) 

CREATE TABLE `menu` (
  `id` int(9) DEFAULT NULL COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` int(9) DEFAULT NULL COMMENT '父菜单ID',
  `type` varchar(2) DEFAULT NULL COMMENT '菜单类型1click,2url,父菜单可为空',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单点击时跳转的链接',
  `message` varchar(2000) DEFAULT NULL COMMENT '点击时返回的消息',
  `CREATED_DATE` date DEFAULT NULL COMMENT '创建时间'
) 

CREATE TABLE `message` (
  `ID` decimal(11,0) NOT NULL COMMENT '主键',
  `FROM` char(30) DEFAULT NULL COMMENT '发自于哪里',
  `TO` char(30) DEFAULT NULL COMMENT '发送给谁',
  `TYPE` char(2) DEFAULT NULL COMMENT '消息类型',
  `content` blob COMMENT '消息内容',
  `date` date DEFAULT NULL COMMENT '消息时间',
  PRIMARY KEY (`ID`)
)