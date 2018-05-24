<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="/css/jquery.alerts.css?v=20160713" />
<link rel="stylesheet" type="text/css" href="/css/head.css?v=20160713" />
<link rel="stylesheet" type="text/css" href="/css/newpay.css?v=20160713" />
<script type="text/javascript" src="/js/jquery-1.5.1.min.js?v=20160713"></script>
<title>Order confirmation - Lychee Store</title>
</head>
<body id="mainframe">
	<!--shortcut start-->
	<jsp:include page="commons/shortcut.jsp" />
	<!--shortcut end-->
	<div class="logoPay">
		<div class="logoPayBox">
			<a href="http://www.e3mall.cn"><img src="/images/logo66.png"
				width="345" height="73" border="0"></a>
		</div>
	</div>
	<div class="pay_main">
		<div class="pay_newbox">
			<div class="pay_left">
				<span class="pay_word1"> <i class="payOkicon"></i>Thank You
					For Your Purchase! Your order number:${orderId }
				</span> <span class="pay_word2">Please make a payment within <em>4hours</em>.
					Otherwise your order will be canceled
				</span>
			</div>
			<span class="pay_Rmoney">Payment : <em class="pay_price">$
					<fmt:formatNumber value="${payment}" maxFractionDigits="2"
						minFractionDigits="2" groupingUsed="true" />
			</em></span>
		</div>
		<div class="pay_ment">
			<div class="pay_name">
				<em class="floatleft">Credit Card</em>
			</div>
			<div class="pay_ment_0 clearfix"></div>
			<div class="pay_name pay_m1">Online Payment</div>
			<div class="pay_ment_0 clearfix"></div>
			<div class="pay_btn">
				<a href="javascript:void(0)" id="prompt_pay_submit">Make a
					Payment</a><span></span>
			</div>
			<script>
				alert(
						"This is the last page of the Lychee Store Tour! Thanks for testing this website!",
						"Info");
			</script>
		</div>
	</div>
	<jsp:include page="commons/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>

