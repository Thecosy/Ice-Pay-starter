package com.atguigu.paymentdemo.config;

/**
 * @author ：Jiaxl
 * @version : V1.0
 * @date ：Created in 2019/12/20
 * @description: 支付宝支付参数集合，沙箱测试账号配置信息，及AlipayClent 初始化参数设置
 */
public class AlipayConfig {

    /**
     * 收款账户的app_id
     * */
    public static final String APP_ID = "2016101600702544";

    /**
     * 收款账户私钥
     * */
    public static final String PRIVATE_KEY = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCah4vRnNdPZJnFAe4udtWhQ/YgbKMxu54waMRahf5/FuerxBN6RhxdRY4c+5O7gaZnm/ksifKJef9JC2TBXBFHb1K+XdGY8mLz6d69lusw2IC06DLQWHAafGwZVKEkSz7Di4mbNyOI+9vr0P+J6I8L57TR3sj5IgJfp7O/tquNj8IoPtllL02NfBbOzNjBxSnwBN45/fPqNsP477N6NUy/rW3ffUgU2Pwmh900PvVB3mTkpa5PuKuKPouLw4pikGnWRD5YT4WwZ2Iid3dwSSfK1mxb2r5zTe/ERSUr1SRocRtIx3qmqa9wAdwq+3DKzDHKO3DYzsEUredUtlDurG9FAgMBAAECggEAdQn2nyMgfFRglrMYl/6PXR4hO3usus00Scv/8+QK1m0duJ3AdtrFPuugcFknElxnEZAz0EUG+pL5BHTpsf2uZKFvVRmv1xy2T7Exb/zvU0aXbO11FxH0jkrwgNr1VYzcE7UK2xGPC4BemCPqd6Q5O7YZ4N7Q7siQbayR2sFa+9LS3ZbfYsXJoFweNYLsWOCAYaPNxHsUkZ6SNAtZZIIOPbrwKaIeMuq4vLRfgkgHy2XbkqayVkf8et7SAgESs26Y1lI/KhTdX9YteUczkrZJhD4yAh99GmBuSOC32TtgrTSITcLjQM9nh8Ad7TTYVKnKqmvt/8dmArETMSLFDpQSnQKBgQD2n+5zMqXHwvXa/bADeJLqA+FWjyQLEh5Uyvug+NpDpdBJoC/0kYnBzkNeHKm6cZjkF46k0PcA8lVeIJngmeJxcsGuOBcdjlcFtRa3w+1d5dpXDaMAM1lgMzQ54V9GQ9K/Yc+gJnVORFCbSwJgQQMjZwV9kj3X8ARkJA6FhEcBswKBgQCgZ1/0RXV+hLL0wR0SNOheNMkbiPO+MD7o5FlDpBgFYjTUOLBS/zuhpBofLlG+hFhtClP84VGYrAnu1s74mj2MBApHUlsOqczAIj2l3vwXU1mt4GSA4dGkOc1ZArQo6aMR/UiP8PK1RbVW+7IB+zZfJZd5shIm9GdNQ0OB0n+fJwKBgQC22seCFAhEfzGoR7XMLQbIiU32zrSLnMhuV/2PUVMLGxK+tA06SPoZfuQGEDxrpzQT0b+KRgENa5+N5aARnib9tHcTxDSnTlUJP0XzxEnm97gWGV9Ek83tfKl5TLdGMp08FrpJZJpPCGm3ajr9wNYh1o2El/xQcX3f/bfimLvI7wKBgD6txnAESFJE9kzvvTVlGTvesosg6+XwolSNDliBIaXQ50XaVQRJmfqizlZK2kRxIMCTHZieTy0yZLtAkyXP16cD2SRfiRdkwI5/ksljJezTdCKeoYc/NpVOxPA4P0ARc9hOufENPToaYC76MWfWyztIzDUQoUk5jbhCRXnQUHBXAoGAOxtDcf4mEikwuqxjYVKwWkBflu+LQ2gpDVd8pXKgM0uYXMiXlvJqFbMZUGRaWtS/Ecs7Uf5K5xp4lsydmtN2aeH+g95d4AZ1XqpR2JbyB8xOd4zQZyFR/Ooh/XZik+zhc7rRTEQT0MLM+RMH8Ssol7BUgNm77oidDwHXKS5K43I=";

    /**
     * 收款账户公钥
     * */
    public static final String PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmoeL0ZzXT2SZxQHuLnbVoUP2IGyjMbueMGjEWoX+fxbnq8QTekYcXUWOHPuTu4GmZ5v5LInyiXn/SQtkwVwRR29Svl3RmPJi8+nevZbrMNiAtOgy0FhwGnxsGVShJEs+w4uJmzcjiPvb69D/ieiPC+e00d7I+SICX6ezv7arjY/CKD7ZZS9NjXwWzszYwcUp8ATeOf3z6jbD+O+zejVMv61t331IFNj8JofdND71Qd5k5KWuT7irij6Li8OKYpBp1kQ+WE+FsGdiInd3cEknytZsW9q+c03vxEUlK9UkaHEbSMd6pqmvcAHcKvtwyswxyjtw2M7BFK3nVLZQ7qxvRQIDAQAB";
    /**
     * AliPay公钥
     * */
    public static final String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgejNtKTKLy5SozMRMh9bkL16voM+aEc5xldxpmboWHM9hWjOp4hi1PSBRXeS3O/BF57MIFWJhcqqBjOTXIiqysYOTSLARgOK9RbMC2OfvrjQbVV81DkAKWJBnRSGk5zWYkmdgTM+5cmucWIEHZeNC2wpGDJTWMrerxeb6rPU+BWOke+Qo/94kdYc8F7eZwXpmU1RLpf/b8n6hYgyWia2Jij0XqPF+KOzqCtKyEdopVVDpU6UkkOwNerqubTBfEpb140Yd735dUoD7CWEH7ttHYCM1l0y0eOboV6pgnJDAKK5XG0r4adteUXZ6S3AAzztWRIL2qmwbZsvsHlGaRBnxQIDAQAB";

    /**
     * 异步回调地址
     * */
    public static final String NOTIFY_URL = "https://9e40-2408-8421-b40-39bf-e5db-c828-c760-6aec.ngrok.io";

    /**
     * 同步回调地址
     * */
    public static final String RETURN_URL = "http://localhost:8080/alipayReturn";

    /**
     * 请求支付宝服务器网关域名(沙箱)
     */
    public static final String ALI_URL = "https://openapi.alipaydev.com/gateway.do";

    /**
     * 请求支付宝服务器网关域名(正式)
     */
//    public static final String ALI_URL = "https://openapi.alipay.com/gateway.do";

    /**
     * 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）
     * */
    public static final String TIMEOUT_EXPRESS = "30m";

    /**
     * 交易创建，等待买家付款
     * */
    public static final String WAIT_BUYER_PAY = "WAIT_BUYER_PAY";

    /**
     * 未付款交易超时关闭，或支付完成后全额退款
     * */
    public static final String TRADE_CLOSED = "TRADE_CLOSED";

    /**
     * 交易支付成功
     * */
    public static final String TRADE_SUCCESS = "TRADE_SUCCESS";

    /**
     * 交易结束，不可退款
     * */
    public static final String TRADE_FINISHED = "TRADE_FINISHED";


    /**
     * 交易支付成功返回代码
     * */
    public static final String RETURN_CODE_SUCCESS = "10000";


    /**
     * 交易支付成功返回信息
     * */
    public static final String RETURN_MSG_SUCCESS = "Success";

}
