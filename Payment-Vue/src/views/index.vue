<template>
  <div class="bg-fa of">
    <section id="index" class="container">
      <header class="comm-title">
        <h2 class="fl tac">
          <span class="c-333">课程列表</span>
        </h2>
      </header>
      <ul>
        <li v-for="product in productList" :key="product.id">
          <a :class="['orderBtn', {current:payOrder.productId === product.id}]" 
            @click="selectItem(product.id)" 
            href="javascript:void(0);" >
            {{product.title}} 
            ¥{{product.price / 100}}
          </a>
        </li>
      </ul>

      
      <div class="PaymentChannel_payment-channel-panel">
        <h3 class="PaymentChannel_title"> 
          选择支付方式 
        </h3>
        <div class="PaymentChannel_channel-options" >

          <!-- 选择微信 -->
          <div :class="['ChannelOption_payment-channel-option', {current:payOrder.payType === 'wxpay'}]"
          @click="selectPayType('wxpay')">
            <div class="ChannelOption_channel-icon">
              <img src="../assets/img/wxpay.png" class="ChannelOption_icon">
            </div>
            <div class="ChannelOption_channel-info">
              <div class="ChannelOption_channel-label">
                <div class="ChannelOption_label">微信支付</div>
                <div class="ChannelOption_sub-label"></div>
                <div class="ChannelOption_check-option"></div>
              </div>
            </div>
          </div>

          <!-- 选择支付宝 -->
          <div :class="['ChannelOption_payment-channel-option', {current:payOrder.payType === 'alipay'}]"
          @click="selectPayType('alipay')">
            <div class="ChannelOption_channel-icon">
              <img src="../assets/img/alipay.png" class="ChannelOption_icon">
            </div>
            <div class="ChannelOption_channel-info">
              <div class="ChannelOption_channel-label">
                <div class="ChannelOption_label">支付宝</div>
                <div class="ChannelOption_sub-label"></div>
                <div class="ChannelOption_check-option"></div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <div class="payButtom">
        <el-button 
        :disabled="payBtnDisabled"
        type="warning" 
        round 
        style="width: 180px;height: 44px;font-size: 18px;"
        @click="toPay()">
          确认支付
        </el-button>
        <!-- <el-button 
        :disabled="payBtnDisabled"
        type="warning" 
        round 
        style="width: 180px;height: 44px;font-size: 18px;"
        @click="toPayV2()">
          确认支付V2
        </el-button> -->
      </div>
    </section>

    <!-- 微信支付二维码 -->
    <div v-if="this.ok">
    <el-dialog
      :visible.sync="codeDialogVisible"
      :show-close="false"
      @close="closeDialog"
      width="320px"
      center>
      <h5
      class="outh5"> <img src="../assets/img/weixinbig.png" class="alipaybig_icon"> 
      </h5>
      <h5
      class="outh5">
      <div class="bottom alipay"> 使用扫码支付
        0.01元 </div>
        </h5>
       <h5
      class="outh5"> 
     <qriously :value="codeUrl" :size="190"/>
        </h5>
        <div style="height:40px">  </div>
        <h5
      class="outh7"> 
        <div  style="color:#E0E0E0;" class="bottom alipay"> 请使用微信扫一扫<br>扫描二维码支付<br> </div>
        </h5>
    </el-dialog>
    </div>
    <!-- 支付宝支付二维码 -->
    <div v-if="this.ok2">
    <el-dialog
      :visible.sync="codeDialogVisible"
      :show-close="false"
      @close="closeDialog"
      width="320px"
      center>
      <h5
      class="outh5"> <img src="../assets/img/alipaybig.png" class="alipaybig_icon"> 
      </h5>
      <h5
      class="outh5">
      <div class="bottom alipay"> 使用扫码支付
        0.01元 </div>
        </h5>
       <h5
      class="outh5"> 
     <qriously :value="codeUrl" :size="190"/>
        </h5>
        <div style="height:40px">  </div>
        <h5
      class="outh6"> 
        <div  style="color:#E0E0E0;" class="bottom alipay"> 请使用支付宝扫一扫<br>扫描二维码支付<br> </div>
        </h5>
    </el-dialog>
    </div>
  </div>
</template>

<script>
import productApi from '../api/product'
import wxPayApi from '../api/wxPay'
import aliPayApi from '../api/aliPay'
import orderInfoApi from '../api/orderInfo'

export default {

  data () {
    return {
      ok:false,
      ok2:false,
      payBtnDisabled: false, //确认支付按钮是否禁用
      codeDialogVisible: false, //微信支付二维码弹窗
      productList: [], //商品列表
      payOrder: { //订单信息
        productId: '', //商品id
        payType: 'wxpay' //支付方式
      },
      codeUrl: '', // 二维码
      orderNo: '', //订单号
      timer: null // 定时器
    }
  },

  //页面加载时执行
  created () {
    //获取商品列表
    productApi.list().then(response => {
      this.productList = response.data.productList
      this.payOrder.productId = this.productList[0].id
    })
  },
  
  methods: {
    //选择商品
    selectItem(productId) {
      console.log('商品id：' + productId)
      this.payOrder.productId = productId
      console.log(this.payOrder)
      //this.$router.push({ path: '/order' })
    },

    //选择支付方式
    selectPayType(type) {
      console.log('支付方式：' + type)
      this.payOrder.payType = type
      //this.$router.push({ path: '/order' })
    },

    //确认支付
    toPay(){
      // console.log("确认支付")
      //禁用按钮，防止重复提交
      this.payBtnDisabled = true

      //支付宝支付
      if(this.payOrder.payType === 'alipay'){ 
        this.ok = false
        this.ok2 = true
        console.log("zfb")
          //调用统一下单接口
        aliPayApi.ftofPay(this.payOrder.productId).then(response => {
          console.log(response)
          this.codeUrl = response.data.codeUrl
          this.orderNo = response.data.orderNo

          //TODO 根据商品id获取价格
          
          //打开二维码弹窗
          this.codeDialogVisible = true

          //启动定时器
          this.timer = setInterval(() => {
            //查询订单是否支付成功
            this.queryOrderStatus()
          }, 3000)

        })
      }
      //微信支付
      if(this.payOrder.payType === 'wxpay'){
        this.ok = true
        this.ok2 = false
          //调用统一下单接口
        wxPayApi.nativePay(this.payOrder.productId).then(response => {
          this.codeUrl = response.data.codeUrl
          this.orderNo = response.data.orderNo
          
          //打开二维码弹窗
          this.codeDialogVisible = true

          //启动定时器
          this.timer = setInterval(() => {
            //查询订单是否支付成功
            this.queryOrderStatus()
          }, 500)

        })
      }

    },

    //确认支付
    // toPayV2(){
    //   //禁用按钮，防止重复提交
    //   this.payBtnDisabled = true

    //   //微信支付
    //   if(this.payOrder.payType === 'wxpay'){
    //       //调用统一下单接口
    //     wxPayApi.nativePayV2(this.payOrder.productId).then(response => {
    //       this.codeUrl = response.data.codeUrl
    //       this.orderNo = response.data.orderNo
          
    //       //打开二维码弹窗
    //       this.codeDialogVisible = true

    //       //启动定时器
    //       this.timer = setInterval(() => {
    //         //查询订单是否支付成功
    //         this.queryOrderStatus()
    //       }, 3000)

    //     })
    //   }

    //   //支付宝支付
    //   if(this.payOrder.payType === 'alipay'){
    //     console.log("zfb")
    //       //调用统一下单接口
    //     wxPayApi.nativePayV2(this.payOrder.productId).then(response => {
    //       this.codeUrl = response.data.codeUrl
    //       this.orderNo = response.data.orderNo
          
    //       //打开二维码弹窗
    //       this.codeDialogVisible = true

    //       //启动定时器
    //       this.timer = setInterval(() => {
    //         //查询订单是否支付成功
    //         this.queryOrderStatus()
    //       }, 3000)

    //     })
    //   }
    // },

    //关闭微信支付二维码对话框时让“确认支付”按钮可用
    closeDialog(){
      console.log('close.................')
      this.payBtnDisabled = false
      console.log('清除定时器')
      clearInterval(this.timer)
    },


    // 查询订单状态
    queryOrderStatus() {

      orderInfoApi.queryOrderStatus(this.orderNo).then(response => {
        console.log('查询订单状态：' + response.code)

        // 支付成功后的页面跳转
        if (response.code === 0) {
          console.log('清除定时器')
          clearInterval(this.timer)
          // 三秒后跳转到订单列表
          setTimeout(() => {
            this.$router.push({ path: '/success' })
          }, 500)
        }
      })
    }
  }
}
</script>
<style scoped>
.alipaybig_icon{
display:inline-block;
width:120px;
margin:0;
padding:0;
text-align:center;
}
.outh5{
  padding:7px;
  display:flex;
  align-content:flex-end;
  justify-content:center;
  flex-wrap:wrap;
}
.outh6{
  height:50px;
  text-align:center;
  position:absolute;
  bottom:0;
  left: 0;
  width: 306px;
  background-color: #01A7EF;
  padding:7px;
  display:flex;
  align-content:flex-end;
  justify-content:center;
  flex-wrap:wrap;
  border-radius:0 0 10px 10px;
}
.outh7{
  height:50px;
  text-align:center;
  position:absolute;
  bottom:0;
  left: 0;
  width: 306px;
  background-color:#09BB21;
  padding:7px;
  display:flex;
  align-content:flex-end;
  justify-content:center;
  flex-wrap:wrap;
  border-radius:0 0 10px 10px;
}
</style>
<style>
.el-dialog--center{
  border-radius:10px;
}
.el-dialog--center .el-dialog__body{
  border-radius:10px;
  text-align:initial;
  background-color:#E0E0E0;
}
.el-dialog__header{
  display:none;
  background-color:#E0E0E0;
}
</style>
