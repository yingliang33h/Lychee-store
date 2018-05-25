<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<title>LycheeStore-Quality food from around the world</title>
<meta name="Keywords"
	content="LycheeStore-All kinds of quality food from around the world">
<meta name="Description"
	content="LycheeStore-All kinds of quality food from around the world.">
<link rel="dns-prefetch" href="//pic.e3mall.cn">
<meta property="wb:webmaster" content="3a008ad947166307">
<link rel="stylesheet" type="text/css"
	href="/css/base_w1200.css?v=2016071333">
<link rel="stylesheet" type="text/css"
	href="/css/index.css?v=2016071312">
<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/global_index.js"></script>
<script src="/js/cart.js?v=20160713" type="text/javascript"></script>
<style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
	top: 18px !important;
	left: 50% !important;
	margin-left: -100px !important;
	width: 200px !important;
	border: 2px rgba(255, 255, 255, .38) solid !important;
	border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
	margin-left: 0px !important;
}
</style>
</head>
<body>
	<!-- header start -->
	<jsp:include page="commons/header.jsp" />
	<jsp:include page="commons/mainmenu.jsp" />
	<!-- header end -->
	<!----row1------->
	<div class="slide_show" id="slide_show">
		<div class="indexW">
			<div id="index_slide" class="slide_wrap">
				<ol>
					<c:forEach items="${ad1List}" var="node" varStatus="status">
						<li><a name="sfbest_hp_hp_focus_${status.index }"
							class="fore_pic trackref" href="${node.url }" target="_blank">
								<img id="lunbo_1" alt="${node.title }" src="${node.pic }">
						</a></li>
					</c:forEach>
					<!-- <li>
			  <a name="sfbest_hp_hp_focus_1" class="fore_pic trackref" href="/html/activity/1471934470.html" target="_blank"> 
				<img id="lunbo_1" alt="8.30-9.5 月饼"	src="/images/html/aa472cb9f9624d22d1fcfd1c4dffbe42.jpg">
			  </a>
			</li>
			<li><a name="sfbest_hp_hp_focus_2" class="fore_pic trackref"
				href="/html/activity/1471514387.html" target="_blank"> <img
					id="lunbo_2" alt="8.23-8.29大闸蟹"
					src="/images/html/516e4d058d1d65a3506e179642297b2d.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_3" class="fore_pic trackref"
				href="/html/activity/1472204196.html" target="_blank"> <img
					id="lunbo_3" alt="8.30-9.5 中秋综合"
					src="/images/html/e886f76e03f7a3596033eb34ca362339.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_4" class="fore_pic trackref"
				href="/html/activity/1471934638.html" target="_blank"> <img
					id="lunbo_4" alt="8.30-9.5 水果"
					src="/images/html/757e35fab995b43c23b4396dc3ba4269.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_5" class="fore_pic trackref"
				href="/html/activity/1472114146.html" target="_blank"> <img
					id="lunbo_5" alt="8.30-9.5粮油"
					src="/images/html/1748dcf682d7f595012e4309695d71d9.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_6" class="fore_pic trackref"
				href="/html/activity/1472546864.html" target="_blank"> <img
					id="lunbo_6" alt="8.30-9.5 酒水"
					src="/images/html/de66a063548629c8d4e639523d8c9c6e.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_7" class="fore_pic trackref"
				href="/html/activity/1471935715.html" target="_blank"> <img
					id="lunbo_7" alt="8.30-9.5牛肉"
					src="/images/html/600c425e04b41f49e451d2fdbafb6e45.jpg">
			</a></li>
			<li><a name="sfbest_hp_hp_focus_8" class="fore_pic trackref"
				href="/html/activity/1471944414.html" target="_blank"> <img
					id="lunbo_8" alt="8.27-8.29一元换购"
					src="/images/html/4dd7317569a06a451c1fe7762d6bf928.jpg">
			</a></li> -->
				</ol>
			</div>
			<div class="rSide">
				<%--  <c:forEach items="${rSideSmallAds}" var="smallAd" varStatus="status">
					<a name="'sfbest_hp_hp_focus_right-ad'+'${status.index+1}'" class="a-img r-img1 trackref"
						href="${smallAd.url}" target="_blank"><img
						alt="${smallAd.subTitle}" class="lazy" src="${smallAd.pic}"
						style="display: inline;"></a>
				</c:forEach>  --%>
				<a name="sfbest_hp_hp_focus_right-ad1" class="a-img r-img1 trackref"
					href="http://item.lycheeStore.net/item/152429199939946.html"
					target="_blank"> <img alt="Mooncake"
					src="http://192.168.239.129/group1/M00/00/00/wKjvgVra2dOAH1j1AACOElev0ic149.jpg">
					<div class="rmask"></div>
				</a> <a name="sfbest_hp_hp_focus_right-ad2"
					class="a-img r-img2 trackref"
					href="http://item.lycheeStore.net/item/152429249049153.html"
					target="_blank"> <img s="" alt="8.30-9.5"
					src="http://192.168.239.129/group1/M00/00/00/wKjvgVra2pKASmOYAACcNTNQjbA971.jpg">
					<div class="rmask"></div>
				</a> <a name="sfbest_hp_hp_focus_right-ad3"
					class="a-img r-img3 trackref"
					href="http://search.lycheeStore.net/search.html?keyword=fruit"
					target="_blank"> <img alt="Fruits"
					src="http://192.168.239.129/group1/M00/00/00/wKjvgVra272AOZWvAAVWd9dRRnE019.jpg">
					<div class="rmask"></div>
				</a>
			</div>
		</div>
		<ul class="none" id="lunboNum">
			<c:forEach items="${ad1List }" varStatus="status">
				<li class="<c:if test="${status.index==0 }">cur</c:if>">${status.index+1 }</li>
			</c:forEach>
			<!-- <li class="cur">1</li>
		        <li class="">2</li>
		        <li class="">3</li>
		        <li class="">4</li>
		        <li class="">5</li>
		        <li class="">6</li>
		        <li class="">7</li>
		        <li class="">8</li> -->
		</ul>
		<div class="indexbg" id="indexbg">
			<dl style="left: -1903px;">
				<dd style="width: 1903px; background: rgb(20, 16, 13);"></dd>
				<dd style="width: 1903px; background: rgb(119, 96, 86);"></dd>
				<dd style="width: 1903px; background: rgb(17, 12, 55);"></dd>
				<dd style="width: 1903px; background: rgb(239, 244, 248);"></dd>
				<dd style="width: 1903px; background: rgb(231, 32, 37);"></dd>
				<dd style="width: 1903px; background: rgb(128, 29, 92);"></dd>
				<dd style="width: 1903px; background: rgb(117, 144, 1);"></dd>
				<dd style="width: 1903px; background: rgb(253, 213, 29);"></dd>
			</dl>
		</div>
	</div>
	<!----row1 end------->
	<!-- 口碑甄选 start -->
	<div class="indexW mt1">
		<div class="bestbuy">
			<div class="b_left">
				<h2>
					Recommended Products<span></span>
				</h2>
				<ul class="bbig" id="bigPerfect">
					<c:forEach items="${recommendedProductList}" var="item"
						varStatus="status">
						<li class="price_list0" goods="${item.title }" eid="b_167461_1"
							id="'cx_b_'+${item.title }+'_1'"><a href="${item.url}"
							title="${item.subTitle }" target="_blank"><img class="lazy"
								data="${item.pic}" alt="${item.subTitle }" src="${item.pic}"
								style="display: inline;"></a>
							<div class="gBtn p-btn bbtn">
								<a pid="167461"
									onclick="cartAdd(${item.title}, 0, 1, 0, 1, this);"
									indexflag="1">Add To Cart</a>
							</div>
					</c:forEach>
				</ul>
			</div>
			<!-- 口碑甄选 end -->
			<div class="rSide1">

				<%-- <div class="rImg2">
					<a name="sfbest_hp_hp_news_right-ad" class="trackref"
						href="${rSideAd.url}" target="_blank"><img salt="9.2-9.5"
						src="${rSideAd.pic}"></a>
				</div> --%>
				<div class="rImg2">
					<c:forEach items="${rSideAd}" var="rsideAd">
						<a name="sfbest_hp_hp_news_right-ad" class="trackref"
							href="${rsideAd.url}" target="_blank"><img
							alt="${rsideAd.subTitle}" class="lazy" src="${rsideAd.pic}"
							style="display: inline;"></a>
					</c:forEach>
				</div>

				<div class="sfNews">
					<div class="rTitle">
						<h2>Lychee Store News</h2>
					</div>
					<ul>
						<li><span name="sfbest_hp_hp_news_1" target="_blank"
							class=" red trackref" title="Free Shipping on $49+ Orders">Free
								Shipping on $49+ Orders</span></li>
						<li><span name="sfbest_hp_hp_news_1" target="_blank"
							class=" red trackref" title="Invite a friend">Give your
								friends a $5 off</span></li>
						<li><span name="sfbest_hp_hp_news_1" target="_blank"
							class=" red trackref" title="Earn Credits When shopping"> Earn 1 Lychee Coin for each spent dollar</span></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
	<!--楼层 start-->
	<div class="indexW mt2 full_ad"
		style="width: 1190px; padding-left: 10px;">
		<c:forEach items="${floorAd}" var="floor" varStatus="status">
			<a name="sfbest_hp_hp_banner_1" class="trackref" href="${floor.url}"
				target="_blank"><img alt="${floor.subTitle}" class="lazy"
				src="${floor.pic}" style="display: inline;"></a>
		</c:forEach>
	</div>
	<div class="indexW mt2 ie6 fresh">
		<div class="category">
			<ul class="mTitle">
				<li>
					<div class="cir"></div>
					<h2>
						<em></em> <a name="sfbest_hp_hp_floor1_floor-category1"
							class="trackref" href="/fresh/52-0-0-0-0-2-0-0-0-0-0.html"
							target="_blank">Fruits</a>&nbsp;&nbsp;
					</h2>
				</li>
			</ul>
			<div class="lCont">
				<a name="sfbest_hp_hp_floor1_left-ad" class="trackref"
					href="/html/activity/1472459562.html" target="_blank"> <img
					alt="8.30-9.5" class="lazy"
					src="/images/goods/26336113289bf7273823080488a9d200.jpg"
					style="display: inline;"></a>
			</div>
		</div>
		<div class="sfRight">
			<div class="subCont">
				<ul class="pList" id="floor-gap-1">
					<c:forEach items="${floorItemAdS}" var="floorItem"
						varStatus="status">
						<li class="price_list1" eid="'l_'+${item.title }+'_7_297'"
							goods="${floorItem.title}" id="'cx_l_'+${item.title }+'_7_297'">
							<div class="pImg">
								<a href="${floorItem.url}" target="_blank"
									title="${floorItem.subTitle}"><img class="lazy"
									data="${item.pic
					}" alt="${floorItem.subTitle}"
									src="${floorItem.pic}" style="display: block;"></a>
								<div class="gBtn p-btn">
									<a pid="${floorItem.title}"
										data_url="/images/goods/160x160.jpg" href="javascript:void(0)"
										indexflag="1">Add To Cart</a>
								</div>
							</div>
							<div class="title-a">
								<a href="${floorItem.url}" target="_blank"
									title="${floorItem.subTitle}">${floorItem.subTitle}</a>
							</div>
							<div class="price" id="priceL_l_218031_7_297">
								<b>$"${floorItem.titleDesc}"</b>
							</div>
						</li>
					</c:forEach>

					<!-- <li class="price_list1" eid="l_218155_7_297" goods="218155"
						id="cx_l_218155_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218155.html#trackref=sfbest_hp_hp_floor1_item2"
								target="_blank" title="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"><img
								class="lazy" data="/images/goods/160x160.jpg"
								alt="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"
								src="/images/goods/160x160-2.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218155" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218155.html#trackref=sfbest_hp_hp_floor1_item2"
								target="_blank" title="天山一号火焰山哈密瓜">天山一号火焰山哈密瓜</a>
						</div>
						<div class="price" id="priceL_l_218155_7_297">
							<b>￥22.8</b>
						</div></li>
					<li class="price_list1" eid="l_236853_7_297" goods="236853"
						id="cx_l_236853_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236853.html#trackref=sfbest_hp_hp_floor1_item3"
								target="_blank" title="一点红冬枣1000g"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="一点红冬枣1000g"
								src="/images/goods/160x160-3.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236853" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236853.html#trackref=sfbest_hp_hp_floor1_item3"
								target="_blank" title="一点红冬枣1kg">一点红冬枣1kg</a>
						</div>
						<div class="price" id="priceL_l_236853_7_297">
							<b>￥69.9</b>
						</div></li>
					<li class="price_list1" eid="l_218955_7_297" goods="218955"
						id="cx_l_218955_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218955.html#trackref=sfbest_hp_hp_floor1_item4"
								target="_blank" title="墨西哥牛油果420g（3个装）"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="墨西哥牛油果420g（3个装）"
								src="/images/goods/160x160-4.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218955" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218955.html#trackref=sfbest_hp_hp_floor1_item4"
								target="_blank" title="墨西哥牛油果3粒420g">墨西哥牛油果3粒420g</a>
						</div>
						<div class="price" id="priceL_l_218955_7_297">
							<b>￥29.9</b>
						</div></li>
					<li class="price_list1" eid="l_236863_7_297" goods="236863"
						id="cx_l_236863_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236863.html#trackref=sfbest_hp_hp_floor1_item5"
								target="_blank" title="佳沛zespri 佳沛新西兰金奇异果12个（36号）"><img
								class="lazy" data="/images/goods/160x160.jpg"
								alt="佳沛zespri 佳沛新西兰金奇异果12个（36号）"
								src="/images/goods/160x160-5.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236863" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236863.html#trackref=sfbest_hp_hp_floor1_item5"
								target="_blank" title="佳沛 新西兰金奇异果12个">佳沛 新西兰金奇异果12个</a>
						</div>
						<div class="price" id="priceL_l_236863_7_297">
							<b>￥76</b>
						</div></li>
					<li class="price_list1" eid="l_236871_7_297" goods="236871"
						id="cx_l_236871_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236871.html#trackref=sfbest_hp_hp_floor1_item6"
								target="_blank" title="国产西梅1000g"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="国产西梅1000g"
								src="/images/goods/160x160-6.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236871" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236871.html#trackref=sfbest_hp_hp_floor1_item6"
								target="_blank" title="国产西梅1kg">国产西梅1kg</a>
						</div>
						<div class="price" id="priceL_l_236871_7_297">
							<b>￥19.9</b>
						</div></li>
					<li class="price_list1" eid="l_218073_7_297" goods="218073"
						id="cx_l_218073_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218073.html#trackref=sfbest_hp_hp_floor1_item7"
								target="_blank" title="新西兰红玫瑰苹果720g(4个装)"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="新西兰红玫瑰苹果720g(4个装)"
								src="/images/goods/160x160-7.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218073" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218073.html#trackref=sfbest_hp_hp_floor1_item7"
								target="_blank" title="新西兰红玫瑰苹果4粒720g">新西兰红玫瑰苹果4粒720g</a>
						</div>
						<div class="price" id="priceL_l_218073_7_297">
							<b>￥35.8</b>
						</div></li>
					<li class="price_list1" eid="l_215405_7_297" goods="215405"
						id="cx_l_215405_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/216/1800215405.html#trackref=sfbest_hp_hp_floor1_item8"
								target="_blank" title="皇冠蜜梨1000g（4个装）"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="皇冠蜜梨1000g（4个装）"
								src="/images/goods/160x160-8.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="215405" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/216/1800215405.html#trackref=sfbest_hp_hp_floor1_item8"
								target="_blank" title="皇冠蜜梨4粒1kg">皇冠蜜梨4粒1kg</a>
						</div>
						<div class="price" id="priceL_l_215405_7_297">
							<b>￥15.9</b>
						</div></li> -->
				</ul>
			</div>
			<div class="redge">
				<ul class="rHot">
					<li><a name="sfbest_hp_hp_floor1_Keywords1" class="trackref"
						href="http://item.lycheestore.net/item/152407863978585.html"
						target="_blank">Onion</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords2" class="trackref"
						href="http://item.lycheestore.net/item/152407882556358.html"
						target="_blank">Snow Peas</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords3" class="trackref"
						href="http://item.lycheestore.net/item/152407905230251.html"
						target="_blank">Lettuce</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords4" class="trackref"
						href="http://item.lycheestore.net/item/152407895825156.html"
						target="_blank">Squash</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords5" class="trackref"
						href="http://item.lycheestore.net/item/152407905230251.html"
						target="_blank">Turnips</a></li>
				</ul>
				<div class="clr"></div>
				<div class="rimg">

					<a name="sfbest_hp_hp_floor1_right-ad" class="ht1 trackref"
						href="http://search.lycheestore.net/search.html?keyword=Fruit+%26+Vegetables" target="_blank"><img
						alt="8.30-9.5" class="lazy"
						data="/images/mixVege.jpg"
						src="/images/mixVege.jpg"
						style="display: inline;"></a>
					<div class="rbutton">
						<a href="http://search.lycheestore.net/search.html?keyword=Fruit+%26+Vegetables" target="_blank"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--楼层 end -->

	<!-- footer start -->
	<jsp:include page="commons/footer.jsp" />
	<!-- footer end -->
</body>
</html>