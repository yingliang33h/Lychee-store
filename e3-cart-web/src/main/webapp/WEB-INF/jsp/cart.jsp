<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
   <meta http-equiv="pragma" content="no-cache">
   <meta http-equiv="cache-control" content="no-cache">
   <meta http-equiv="expires" content="0"> 
   <meta name="format-detection" content="telephone=no">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
   <meta name="format-detection" content="telephone=no">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css?v=20160713" />
<link rel="stylesheet" type="text/css" href="/css/head.css?v=20160713" />
<link rel="stylesheet" type="text/css" href="/css/cart.css?v=20160630">
<link rel="stylesheet" type="text/css" href="/css/common.css?v=201321222" />
<script type="text/javascript" src="/js/jquery-1.5.1.min.js?v=20160713"></script>
<script type="text/javascript" src="/js/jquery.price_format.2.0.min.js"></script>
<script type="text/javascript" src="/js/jquery.alerts.js?v=20160713"></script>
<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
 <script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
<script type="text/javascript" src="/js/shadow.js?v=20160416"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/global_index.js"></script>


   <title>My Cart-Lychee Store</title>
<body> 
<jsp:include page="commons/header.jsp" />
<div class="cartMain">
	<div class="cartHead">
		<h3 class="cartMy">My Cart</h3>
		<div class="clear"></div>
	</div>
	<div class="cartMain">
      <div class="cartThead">
        <div class="tCol tCheckbox"><input name="acart_list_check" id="Zall" type="checkbox" onclick="Zall(this)"> All</div>
        <div class="tCol tGoods">Product</div>
        <div class="tCol tPrice">Item Price</div>
        <div class="tCol tPromotion">Discount</div>
        <div class="tCol tQuantity">Number</div>
        <div class="tCol tSubtotal">Subtotal</div>
        <div class="tCol tInventory">Stock Status</div>
        <div class="tCol tOperator">Modification</div>
      </div>
      <div class="cartTbody">

		<div class="cartColumnhd">
			<div class="cartCheckbox">
				<input name="cart_list_yx" id="Zpu" type="checkbox"
					onclick="PutongAll(this)">Products 
			</div>
		</div>
		<div class="cartList youxuan" id="all_putong">
		<div style="margin: 20px; text-align: center; display: none;" id="danjianload"></div>
		<div id="danjian">
			<div class="cartItem">
				<c:forEach items="${cartList}" var="cart">
				<c:set var="totalPrice"  value="${ totalPrice + (cart.price * cart.num)}"/>
				<div class="cartPInfo" id="danjian-0-229363">
					<div class="clearit">
						<div class="pItem pCheckbox">
							<input name="cart_list" class="putong"	value="danjian-0-229363" type="checkbox"/>
						</div>
						<div class="pItem pGoods">
							<div class="cart_pimg">
								<a target="_blank" title="${cart.title }" href="http://localhost:8086/item/${cart.id }.html">
								<img src="${cart.image }" style="width: 60px;height: 60px;"/>
								</a>
							</div>
							<div class="cart_pname">
								<div>
								<a target="_blank" href="http://localhost:8086/item/${cart.id }.html">${cart.title }</a>
								</div>
							</div>
						</div>
						<div class="pItem pPrice">
							<div style="position: relative;">
								<strong>$<fmt:formatNumber groupingUsed="false" value="${cart.price / 100}" maxFractionDigits="2" minFractionDigits="2"/></strong>
							</div>
						</div>
						<div class="pItem pPromotion">&nbsp;</div>
						<div class="pItem pQuantity">
							<div class="cartAmount">
								<a href="javascript:void(0);" class="cartCountBtn decrement">-</a> 
								<input type="text" value="${cart.num }" class="amount itemnum" itemPrice="${cart.price}" itemId="${cart.id}" id="amountdanjian-0-229363" name="amount">
								<a href="javascript:void(0);" class="cartCountBtn increment">+</a> 
							</div>
						</div>
						<!-- <div class="pItem pWeight">0.05kg<br></div> -->
						<div class="pItem pSubtotal">
							<span id="total_price" class="totalprice">$<fmt:formatNumber groupingUsed="false" value="${cart.price / 100 * cart.num}" maxFractionDigits="2" minFractionDigits="2"/></span>
						</div>
						<div class="pItem pInventory">In stock</div>
						<div class="pItem pOperator">
							<a id="cartDel" href="/cart/delete/${cart.id}.html">Delete</a>
							
						</div>
					</div>
		</div>
		</c:forEach>
		</div>
	</div>
	</div>
	
	</div>
      <div class="cartOrderCount" id="orderCount">
        <div class="cartButtons">
          <!-- <input type="button" value="Delete selected" onclick="javascript:cartDelMore();" class="cartclear">
          <input type="button" value="Clear cart" onclick="delAll()" class="cartclear"> -->
        </div>
        <div class="cartTotalItem">
          <span id="all_shopePrice">(Delivery fee dose not included)</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 18px;font-weight: bold;">Total:</span>
          <span class="cartPrice" id="allMoney2">$<fmt:formatNumber value="${totalPrice / 100}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
          </span>
        </div>
      </div>
      <div class="cartJsuan">
         <input onclick="javascript:document.location.href='http://www.lycheeStore.net'" class="goshop" value="Continue Shopping" type="button">
         <input onclick="javascript:document.location.href='http://localhost:8092/order/order-cart.html'" class="jiesuan youxuan" value="Checkout" type="button">
      </div>
    </div>
</div>
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->

</html>