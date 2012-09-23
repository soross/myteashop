/*==============================================================*/
/* Table: "T_PRESENT"       积分礼品                       */
/*==============================================================*/
create table T_PRESENT( 			--积分礼品
  ID         NUMBER primary key,	--编号
  NAME       VARCHAR2(50),   		--礼品名称
  ptype       CHAR(1),				--礼品类型,0为网内,1为网外
  NUM        NUMBER,				--数量
  PICTURE    VARCHAR2(100),			--效果图
  INTEGRAL   NUMBER,				--需要积分
  del        char(1),				--伪删除标志，1为删除，0为没删除
  INVALIDATE DATE					--有效时间
);
create sequence seq_prisent increment by 1 start with 200 nomaxvalue minvalue 1;

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (1, '100元手机充值卡', '', 500, '1257028931156.jpg', 100, '0', to_date('01-11-2011', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (2, '红色100元充值卡', '', 199, '1257029032687.jpg', 100, '0', to_date('01-11-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (3, '50元充值卡', '', 599, '1257029086750.jpg', 50, '0', to_date('01-11-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (4, '30元充值卡', '', 599, '1257029119437.jpg', 30, '0', to_date('01-01-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (5, '卡通30元充值卡', '', 800, '1257029149781.jpg', 30, '0', to_date('01-12-2011', 'dd-mm-yyyy'));



/*==============================================================*/
/* Table: "T__MONTH_SCORE"       月积分                       */
/*==============================================================*/
create table T_MONTH_SCORE(		--月积分
  ID     NUMBER primary key,		--编号
  PHONE  VARCHAR2(18),				--手机号
  TOTAL  NUMBER,					--当月积分合计
  MONTH  varchar2(50),						--月份
  PAY    NUMBER,					--当月出账话费
  BASIC  NUMBER,					--基本积分
  POWER  NUMBER,					--当月权重
  PRIZE  NUMBER,					--奖励积分
  ADJUST NUMBER,					--调整积分
  CHANGE NUMBER						--兑换积分
);
create sequence seq_month increment by 1 start with 1 nomaxvalue minvalue 1;
/*==============================================================*/
/* Table: "T_MONTH_SCORE"       月积分表索引                      */
/*==============================================================*/
create index mp on t_month_score(phone);
create index mm on t_month_score(month);

/*==============================================================*/
/* Table: "T_MONTH_SCORE"       月积分临时表                       */
/*==============================================================*/
create global temporary table t_month_temp(phone varchar2(18),total number,month varchar2(50),pay number,power number,adjust number,change number) on commit  delete rows; 

/*==============================================================*/
/* Table: "T_YEAR_SCORE"       年积分                       */
/*==============================================================*/
create table T_YEAR_SCORE(			--年积分
  ID       NUMBER primary key,		--编号
  PHONE    VARCHAR2(18),			--手机号码
  TOTAL    NUMBER,					--当年累计积分
  CHANGE   NUMBER,					--当年兑换积分
  YEAR     varchar2(50),					--年份
  VEST     VARCHAR2(20),			--归属地
  BALANCE  NUMBER,					--当年剩余积分
  VALIDTAG CHAR(1)					--有效标识
);
create sequence seq_year increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_TOTAL_SCORE"       累计积分                       */
/*==============================================================*/
create table T_TOTAL_SCORE(			--累计积分
  ID         NUMBER primary key,	--编号
  PHONE      VARCHAR2(18),			--用户号码
  VEST       VARCHAR2(20),			--归属地
  INVALIDATE DATE default sysdate,		--积分起始时间
  VINTEGRAL  NUMBER,				--当前有效积分
  INVALIBLE  NUMBER,				--已作废积分
  TOTAL      NUMBER					--累计积分
);
create sequence seq_total increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_SCORELOG"       积分操作日志                      */
/*==============================================================*/
create table T_SCORELOG(			--积分操作日志
  ID          NUMBER primary key, 		--编号
  PHONE       VARCHAR2(20),			--手机号码
  BEFORESCORE NUMBER,				--操作前积分
  AFTERSCORE  NUMBER,				--操作后积分
  operTYPE    CHAR(1),				--操作类型
  CHANGENO    varchar2(50),			--兑换编号
  PLACE       VARCHAR2(20),			--操作点
  OPERATER    VARCHAR2(20),			--操作者
  OPERDATE    DATE				--操作日期
);
create sequence seq_SCORELOG increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_APPLYSCORE"       积分申请                     */
/*==============================================================*/
create table T_APPLYSCORE(			--积分申请
  ID       NUMBER primary key,		--编号
  PHONE    VARCHAR2(20),			--手机号码
  OPERATER VARCHAR2(20),			--操作人员
  OPERDATE DATE						--操作时间
);
create sequence seq_APPLYSCORE increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_CHANGE"       积分兑换记录                    */
/*==============================================================*/
create table T_CHANGE(				--积分兑换记录
  ID        varchar2(50) primary key ,	        --编号
  PHONE     VARCHAR2(18),			--手机号
  type      NUMBER,				--礼品件数
  CHANGENUM NUMBER,				--兑换数量
  total     number,                             --兑换积分
  OPERATER  VARCHAR2(15),			--操作者
  CDATE     DATE				--兑换日期
);

/*==============================================================*/
/* Table: "T_CHANGE_item"       积分兑换明细                   */
/*==============================================================*/
create table T_change_item(
 id  number primary key,		--编号
 cid varchar2(50),			--兑换编号
 pid number,				--礼品编号
 pname varchar2(50),			--礼品名
 picture VARCHAR2(100),			--图片
 score number,                          --所需积分
 changenum number,			--兑换数量
 backnum number	,			--可回退数
 vdate date				--礼品有效期
);

create sequence seq_CHANGE_item increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_back"       积分回退记录                    */
/*==============================================================*/
create table T_back(				--积分回退记录
  ID        NUMBER primary key ,	        --编号
  cid       varchar2(50),			--兑换编号
  PHONE     VARCHAR2(18),			--手机号
  PRISENTID NUMBER,				--礼品编号
  BACKNUM  NUMBER,				--回退数量
  OPERATER  VARCHAR2(15),			--操作者
  bdate     DATE				--回退日期
);
create sequence seq_back increment by 1 start with 1 nomaxvalue minvalue 1;