var CART = {
	itemNumChange : function(){
		$(".increment").click(function(){//＋
			var _thisInput = $(this).siblings("input");
			_thisInput.val(eval(_thisInput.val()) + 1);
			$.post("/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice();
				CART.refreshCartNum();
				var n = eval(_thisInput.val());
				var p = eval(_thisInput.attr("itemPrice"));
				subtotal = (p * 10000 * n) / 10000;
				_thisInput.parent().parent().siblings().children('#total_price').html(new Number(subtotal/100).toFixed(2)).priceFormat({ //价格格式化插件
					 prefix: '$',
					 thousandsSeparator: ',',
					 centsLimit: 2
				});
			});
			
		});
		$(".decrement").click(function(){//-
			var _thisInput = $(this).siblings("input");
			if(eval(_thisInput.val()) == 1){
				return ;
			}
			_thisInput.val(eval(_thisInput.val()) - 1);
			$.post("/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice();
				CART.refreshCartNum();
				var n = eval(_thisInput.val());
				var p = eval(_thisInput.attr("itemPrice"));
				subtotal = (p * 10000 * n) / 10000;
				_thisInput.parent().parent().siblings().children('#total_price').html(new Number(subtotal/100).toFixed(2)).priceFormat({ //价格格式化插件
					 prefix: '$',
					 thousandsSeparator: ',',
					 centsLimit: 2
				});
			});
		});
		/*$(".itemnum").change(function(){
			var _thisInput = $(this);
			$.post("/service/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val(),function(data){
				CART.refreshTotalPrice();
			});
		});*/
	},
	refreshTotalPrice : function(){
		var total = 0;
		$(".itemnum").each(function(i,e){
			var _this = $(e);
			total += (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
		});
		$("#allMoney2").html(new Number(total/100).toFixed(2)).priceFormat({ //价格格式化插件
			 prefix: '$',
			 thousandsSeparator: ',',
			 centsLimit: 2
		});
	},
	refreshCartNum : function(){
		var total = 0;
		$(".itemnum").each(function(i,e){
			var _this = $(e);
			total += eval(_this.attr("value")) ;
		});
		$("#cartNum").html(total);
	},
}

$(function(){
	CART.itemNumChange();
});

var hostUrl = document.location.host;
var urlArr = hostUrl.split('.');
var domain = urlArr[1]+'.'+urlArr[2];
var SF_STATIC_URL = 'http://i.'+domain;
var cartHostUrl = 'http://cart.'+domain;
var wwwHostUrl  = 'http://www.'+domain;
var pp = new Array();//用于存放购物车中状态不适合的商品

$(document).ready(function(){
  $(".cartAddrPrice").slideDown(300,function(){setTimeout(function(){$(".cartAddrPrice").slideUp(300)},4000)});
})


/*购物车删除单个商品
  @param  string value   活动类型-活动id-商品id  这三者组合
  */
function cartDel(value){
  jConfirm("确定删除此商品？", '提示消息', function(r){
    if (r){
      yibo('delete',value,1);
      $.ajax({
        url  : cartHostUrl+'/cart/delCartProduct/',
        type : 'POST',
        //dataType: 'json',
        dataType: "jsonp",  //返回json格式的数据   
        jsonp:"callback",
		async: false,
        data : {val : new Array(value)},
        success: function(msg){
          if(msg.error==1){
            if(msg.info.is_ht==true){
              var ht = '_ht';
            }else{
              var ht = '';
            }  
            if($('#'+msg.info.type+ht).length > 0){
              $('#'+msg.info.type+ht).html(msg.data);
              chmodeNum(msg.info.cart);
            }
            getCartList();//更新右上角的购物列表
            changeCheckboxStats();
          }else{
            jAlert(msg.info);
          }
        }
      });
    }else{
      return false;
    }	
  }
  );
}

//删除多个选择商品
function cartDelMore(){
  jConfirm("确定删除选中的商品？", '提示消息', function(r){
    if (r){
      var result = new Array();
      $("input[name='cart_list']:checked").each(function(){ 
        result.push($(this).val()); 
      });
      var ids = result.join(",");
      yibo('delete',ids,1);
      $.ajax({
        url  : cartHostUrl+'/cart/delCartProduct/',
        type : 'GET',
        data : {val : result},
        dataType: 'jsonp',
        jsonp:"callback",
        success: function(msg){
          if(msg.error==1){
            //top.location.reload();
            top.location.href = cartHostUrl+'/cart/index/';
          }else{
            jAlert(msg.info);
          }
        }
      });
    }else{
      return false;
    }
  });
}

/**
 * 清空购物车
 */
function delAll(huid)
{
  jConfirm("Are you sure to clear your cart？", 'Info', function(r){
    if(r){
      yibo('delete','',1);
      $.ajax({
        url  : cartHostUrl+'/cart/delAll/',
        type : 'POST',
        data : {userid:huid},
        dataType: 'json',
        success: function(msg){
          if(msg.error==1){
            //top.location.reload();
            top.location.href = cartHostUrl+'/cart/index/';
          }else{
            jAlert(msg.info);
          }
        }
      });
    } else {
      jAlert(msg.info);
    }
  });
}


function getCartNum(){
  $.ajax({
    url  : cartHostUrl+'/cart/countNum/',
  type : 'POST',
  data : {},
  dataType: 'json',
  success: function(msg){
    if(msg.error==1){
      $('#cartNum').html(msg.data);
    }else{
      jAlert(msg.info);
    }
  }
  });
}


