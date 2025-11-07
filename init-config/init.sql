CREATE DATABASE freeswitch DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


# 以下为freeswitch 所需要表
## 通话记录需要手动创建
CREATE TABLE cdr_table_a
(
    uuid               VARCHAR(255) COMMENT 'uuid',
    call_uuid          VARCHAR(255) COMMENT 'uuid',
    caller_id_name     VARCHAR(255) COMMENT '主叫名称',
    caller_id_number   VARCHAR(255) COMMENT '主叫号码',
    destination_number VARCHAR(255) COMMENT '被叫号码',
    start_stamp        DATETIME COMMENT '呼叫时间',
    answer_stamp       DATETIME COMMENT '应答时间',
    end_stamp          DATETIME COMMENT '结束时间',
    uduration          INT COMMENT '呼叫时长',
    local_ip_v4        VARCHAR(255) COMMENT 'IP地址',
    billsec            INT COMMENT 'billsec',
    hangup_cause       VARCHAR(255) COMMENT '挂断原因',
    sip_network_ip     VARCHAR(255) COMMENT 'sip ip'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='呼叫数据';

CREATE TABLE cdr_table_b
(
    uuid               VARCHAR(255) COMMENT 'uuid',
    call_uuid          VARCHAR(255) COMMENT 'uuid',
    caller_id_name     VARCHAR(255) COMMENT '主叫名称',
    caller_id_number   VARCHAR(255) COMMENT '主叫号码',
    destination_number VARCHAR(255) COMMENT '被叫号码',
    start_stamp        DATETIME COMMENT '呼叫时间',
    answer_stamp       DATETIME COMMENT '应答时间',
    end_stamp          DATETIME COMMENT '结束时间',
    uduration          INT COMMENT '呼叫时长',
    local_ip_v4        VARCHAR(255) COMMENT 'IP地址',
    billsec            INT COMMENT 'billsec',
    hangup_cause       VARCHAR(255) COMMENT '挂断原因',
    sip_network_ip     VARCHAR(255) COMMENT 'sip ip'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='接听数据';

CREATE TABLE cdr_table_ab
(
    uuid               VARCHAR(255) COMMENT 'uuid',
    call_uuid          VARCHAR(255) COMMENT 'uuid',
    caller_id_name     VARCHAR(255) COMMENT '主叫名称',
    caller_id_number   VARCHAR(255) COMMENT '主叫号码',
    destination_number VARCHAR(255) COMMENT '被叫号码',
    start_stamp        DATETIME COMMENT '呼叫时间',
    answer_stamp       DATETIME COMMENT '应答时间',
    end_stamp          DATETIME COMMENT '结束时间',
    uduration          INT COMMENT '呼叫时长',
    local_ip_v4        VARCHAR(255) COMMENT 'IP地址',
    billsec            INT COMMENT 'billsec',
    hangup_cause       VARCHAR(255) COMMENT '挂断原因',
    sip_network_ip     VARCHAR(255) COMMENT 'sip ip'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC COMMENT ='通话数据';