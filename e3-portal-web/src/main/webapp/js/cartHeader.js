$(function(){
	var totalNum = 0;
	var cartList = getCookie('cart');
	if (cartList == "")  {
		totalNum = 0;
	}
	else { 
		if (cartList[0] == "%") {
			cartList = decodeURIComponent(getCookie('cart'));
		}
		var list = JSON.parse(cartList);
		for (var i = 0; i < list.length; i++) {
			totalNum += list[i].num;
		}
			
	}
	$("#cartNum").html(totalNum);
})