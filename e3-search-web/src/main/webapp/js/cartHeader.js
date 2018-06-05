$(function(){
	var totalNum = 0;
	var cartList = getCookie('cart');
	if (cartList == "")  {
		totalNum = 0;
	}
	else {
		var list = JSON.parse(decodeURIComponent(cartList));;
		for (var i = 0; i < list.length; i++) {
			totalNum += list[i].num;
		}
			
	}
	$("#cartNum").html(totalNum);
})