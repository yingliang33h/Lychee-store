<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--shortcut start-->
<jsp:include page="shortcut.jsp" />
<script type="text/javascript" src="/js/cartHeader.js"></script>
<script type="text/javascript" src="/js/jquery-1.5.1.min.js?v=20160713"></script>
<script type="text/javascript" src="/js/jquery.price_format.2.0.min.js"></script>
<script type="text/javascript" src="/js/jquery.alerts.js?v=20160713"></script>
<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
<!--shortcut end-->
<div id="header">
  <div class="header_inner">
    <div class="logo">
        <div class="index_topad" id="playLogo" style="">
        </div>
		<a name="sfbest_hp_hp_head_logo" href="http://www.lycheestore.net/" class="trackref logoleft">
		</a>
		<div class="logo-text">
		</div>
		</div>
    <div class="index_promo"></div>
    <div class="search">
      <form action="http://search.lycheeStore.net/search.html" id="searchForm" name="query" method="GET">
        <input type="text" class="text keyword ac_input" name="keyword" id="keyword" value="" style="color: rgb(153, 153, 153);" onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');" autocomplete="off">
        <input type="button" value="" class="submit" onclick="search_keys('searchForm')">
      </form>
      <div class="search_hot"><a target="_blank" href="http://search.lycheeStore.net/search.html?keyword=chicken">Chicken</a><a target="_blank" href="http://search.lycheeStore.net/search.html?keyword=salad">Salad</a><a target="_blank" href="http://search.lycheeStore.net/search.html?keyword=chocolate">Chocolate</a><a target="_blank" href="http://search.lycheeStore.net/search.html?keyword=berry">Berris</a><a target="_blank" href="http://search.lycheeStore.net/search.html?keyword=Coconut+Water">Coconut Water</a></div>
    </div>
    <div class="shopingcar" id="topCart">
      <s class="setCart"></s><a href="http://cart.lycheeStore.net/cart/cart.html" class="t" rel="nofollow">My Cart</a><b id="cartNum">0</b>
      <span class="outline"></span>
      <span class="blank"></span>
      <div id="cart_lists">
        <!--cartContent-->   
        <div class="clear"></div>
      </div>
    </div>
  </div>
</div>
