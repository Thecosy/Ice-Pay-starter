# 支付聚合spring boot组件

基于前后分离的可视化开发，本项目的起因是因为网上的支付配置，大多太笼统，没有做到可以清晰的可视化支付流程。本项目通过前后端分离的方式，通过对接接口方便快捷的实现了集支付、取消订单、退款的开发流程，使得可以快速的对接到自己的项目当中，真正做到开箱即用。

**本项目支付配置已预先设置好，支付宝为沙箱账号，可以自己先进行测试。**

## 预览

<img width="1194" alt="截屏2022-03-26 下午4 48 43" src="https://user-images.githubusercontent.com/87817554/160233650-ef8d2328-7d41-4555-a043-1d4e493b6ed0.png">
<img width="1211" alt="截屏2022-03-26 下午4 49 57" src="https://user-images.githubusercontent.com/87817554/160245278-f8ca5a74-7109-4ba8-8d23-7e4d3799f6e9.png">
<img width="769" alt="截屏2022-03-26 下午4 50 07" src="https://user-images.githubusercontent.com/87817554/160233655-77a7a414-aca7-4239-8eef-5fd18a9ad732.png">
<img width="645" alt="截屏2022-03-26 下午5 19 01" src="https://user-images.githubusercontent.com/87817554/160233661-be4983c8-3bc0-4546-8258-3ee5e6a599a6.png">
<img width="658" alt="截屏2022-03-26 下午5 19 11" src="https://user-images.githubusercontent.com/87817554/160233662-b0ecdc6d-37b3-4f97-98ee-dd526a7da782.png">

# 使用教程

## 一、前台VUE项目部署

#### 进入到本项目的 Payment-Vue 目录

```
cd Payment-Vue

npm install

npm run serve

```
## 二、后台Spring Boot项目部署

#### 首先需要进入Payment-java目录

1.在application.yml文件当中配置数据库

2.部署Payment-java文件夹内部的sql自动数据库脚本

3.运行项目

###### 支付教程 

 * [基础模块支付宝微信讲解](https://gitee.com/egzosn/pay-java-parent/wikis/Home)
 * [微信V3，查看demo/WxV3PayController](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-demo/)
 * [微信合并支付，查看demo/WxV3CombinePayController](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-demo/)
 * [微信分账，查看demo/WxV3ProfitSharingController](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-demo/)
 * [银联](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-union?dir=1&filepath=pay-java-union)
 * [payoneer](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-payoneer?dir=1&filepath=pay-java-payoneer)
 * [paypal,查看demo/PayPalV2PayController](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-demo/)
 * [友店微信](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-wx-youdian?dir=1&filepath=pay-java-youdian)
 * [富友](https://gitee.com/egzosn/pay-java-parent/blob/develop/pay-java-fuiou?dir=1&filepath=pay-java-fuiou)
