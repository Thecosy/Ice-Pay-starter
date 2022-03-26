// axios 发送ajax请求
import request from '@/utils/request'

export default{
  //ftof下单
  ftofPay(productId) {
    return request({
      url: '/api/ali-pay/ftof/' + productId,
      method: 'post'
    })
  },

  cancel(orderNo) {
    return request({
      url: '/api/ali-pay/cancel/' + orderNo,
      method: 'post'
    })
  },

  refunds(orderNo, reason) {
    return request({
      url: '/api/ali-pay/refunds/' + orderNo + '/' + reason,
      method: 'post'
    })
  }
}
