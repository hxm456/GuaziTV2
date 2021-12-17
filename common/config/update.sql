-- default  值
alter table `sf_admin` modify column `username` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名';
alter table `sf_apple_trade` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID';
alter table `sf_apps_alipay` modify column `app_id` int(11) unsigned NOT NULL DEFAULT '0';
alter table `sf_apps_alipay` modify column `created_at` int(11) unsigned NOT NULL DEFAULT '0';
alter table `sf_apps_alipay` modify column `updated_at` int(11) unsigned NOT NULL DEFAULT '0';
alter table `sf_apps_wechat_pay` modify column `app_id` int(11) unsigned NOT NULL DEFAULT '0';
alter table `sf_cancel_account_log` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid';
alter table `sf_comment` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户ID';
alter table `sf_comment` modify column `video_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '视频系列id';
alter table `sf_comment` modify column `chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '视频id';
alter table `sf_comment_like` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid';
alter table `sf_expend` modify column `expend_no` varchar(64) NOT NULL  DEFAULT '' COMMENT '消费单号';
alter table `sf_expend` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID';
alter table `sf_expend` modify column `type` tinyint(1) unsigned NOT NULL  DEFAULT '1' COMMENT '类型 1-去广告';
alter table `sf_pay_error_log` modify column `note` varchar(255) NOT NULL DEFAULT '' COMMENT '备注信息';
alter table `sf_push_passageway` modify column `p_key` varchar(16) NOT NULL DEFAULT '' COMMENT '通道key';
alter table `sf_push_passageway` modify column `app_key` varchar(32) NOT NULL DEFAULT '' COMMENT 'app key';
alter table `sf_setting_apps_push` modify column  `app_id` int(11) NOT NULL DEFAULT '0';
alter table `sf_user_auth_app` modify column `openid` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户唯一标识';
alter table `sf_user_message` modify column `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '消息类型，1：系统消息';
alter table `sf_video_actor` modify column `display_order` tinyint(3) unsigned NOT NULL DEFAULT '0';
alter table `sf_video_favorite` modify column `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid';
alter table `sf_video_stat` modify column `date` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '日期';
alter table `sf_video_stat` modify column `year_month` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '日期';
alter table `sf_video_stat` modify column `video_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '作品ID';
alter table `sf_actor` modify column `area_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地域';
alter table `sf_admin` modify column `password_hash` varchar(255) NOT NULL DEFAULT '' COMMENT '密码';
alter table `sf_apps_info` modify column `package_name` varchar(256) NOT NULL DEFAULT '' COMMENT '包名';
alter table `sf_feedback` modify column `reply` varchar(512) NOT NULL DEFAULT '' COMMENT '回复内容';

alter table `sf_video_source` add `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间';
alter table `sf_role` add `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1上线' after `detail`;