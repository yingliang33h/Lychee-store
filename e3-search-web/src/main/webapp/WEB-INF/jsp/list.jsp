<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Cache-Control" content="max-age=300" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${query}-LycheeStore-Qualityfood</title>
<link rel="stylesheet" type="text/css" href="/css/productList.css" />
<link rel="stylesheet" type="text/css" href="/css/base_w1200.css" />
<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css" />
<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/js/common.js?v=20160713"></script>
<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/NewVersion.js?v=20160713"></script>
<script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
<script type="text/javascript" src="/js/shadow.js?v=20160416"></script>
<script type="text/javascript" src="/js/global_index.js"></script>
</head>
<body>
	<!-- header start -->
	<jsp:include page="commons/header.jsp" />
	<jsp:include page="commons/mainmenu.jsp" />
	<!-------面包线 linknav--------->
	<div class="linknav">
		<div class="schArticle">
			<span target="_blank">for“<span>${query}</span>”we have <span
				id="articlenum">${recourdCount } </span>items&gt;&gt;
			</span>
		</div>
		<div class="breadcrumb">
			<span>Results&nbsp;&gt;&nbsp;${query}</span>
		</div>
	</div>
	<div class="content_list">
		<div class="main-box">

			<a id="prolist-id"></a>
			<div class="r-filter">
				<div class="f-sort">
					<div class="pagin">
						<span class="txt"><span class="n">${page }</span>/${totalPages }</span>
						<span class="prev">Up</span><span class="next">Down</span>
					</div>
					<div class="total">
						<span>${recourdCount }</span> items in total
					</div>
				</div>
			</div>

			<a name="prolist" id="prolist"></a>
			<div class="p-list">
				<ul class="list-all">
					<c:forEach items="${itemList }" var="item">
						<li>
							<div class="l-wrap">
								<div class="pic">
									<a class="trackref"
										href="http://localhost:8086/item/${item.id}.html"
										title="" target="_blank"> <img src="${item.images[0] }"
										style="display: inline" />
									</a>
								</div>
								<div class="price">
									<span><span class="p-now">$<strong><fmt:formatNumber
													groupingUsed="false" maxFractionDigits="2"
													minFractionDigits="2" value="${item.price / 100 }" /></strong></span><span
										class="p-nor"></span><span class="active" style="">sale</span></span>
								</div>
								<div class="title-a">
									<a class="trackref presaleSign_225865"
										href="http://localhost:8086/item/${item.id}.html"
										target="_blank">${item.title }</a>
								</div>
								<div class="title-b" style="">
									<a class="trackref"
										href="http://localhost:8086/item/${item.id}.html"
										target="_blank">${sell_point }</a>
								</div>
								<!-- 	            <div class="comment">
	                <div class="owner_shop_list">Lychee Store</div>                    
	            </div> -->
							</div>
						</li>
					</c:forEach>
				</ul>
				<span class="clear"></span>
			</div>

			<div class="pages"></div>

		</div>
		<div class="left-box">
			<div class="catlist" id="cateall">
				<div class="ct">
					<h2>Also Search</h2>
				</div>
				<div class="cm">
					<div class="catitem" style="border-top-width: 0px;">
						<h3>
							<b></b><a onClick="alert('Coming Soon!')" class="">Meat<span>（1）</span></a>
						</h3>
					</div>
					<div class="catitem">
						<h3>
							<b></b><a onClick="alert('Coming Soon!')" class="">Seefood<span>（35）</span></a>
						</h3>

					</div>
				</div>
			</div>


		</div>
	</div>
	<jsp:include page="commons/footer.jsp" />
</body>
</html>