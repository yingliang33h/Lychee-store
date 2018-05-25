<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>Login Lychee Store</title>
       <link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css" />
       <link rel="stylesheet" type="text/css" href="/css/headerfooter.css" />
<link rel="stylesheet" type="text/css" href="/css/headerfooterindex.css" />
<link rel="stylesheet" type="text/css" href="/css/login.css" />
<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/png.js"></script>
<script type="text/javascript" src="/js/cas.login.js"></script>
<script type="text/javascript" src="/js/capsLock.js"></script>
</head>
<body>
	<!-- header -->
	<div class="header">
		<a href="http://www.e3mall.cn"><img src="/images/logo.png" border="0"><span style="float:right"><strong>Welcome to Lychee Store~~~</strong> </span></a>
	</div>
	<!-- login_main -->
	<div class="login_main clear">
		<div class="pic">
			<a href="http://www.e3mall.cn/html/activity/1472720729.html" target="_blank"><img src="/images/06f42c372620f92b40da77a8b23cdf7f.png"></a>
		</div>
		<!-- login -->
		<div class="login">
			<div class="login_header">
    	<a href="/page/register">Register</a>
    </div>

			<div class="login_box clear">
				<ul class="loginnav">
					<li class="curr" mark="sfbest"><em></em>Account</li>
				</ul>

				<div class="logincon">
					<ul>
					<form id="formlogin" method="post" >
						<div style="display:none;">
              					 
       						 </div>
						<li style="display:none;"><span class="title">BGCode</span>
						    <span class="border">
						     <input type="hidden" name="bgcode" id="bgcode" value="sfbest" class="loginText">
						        <em class="icon1" id="bgcode_em"></em>
							
							</span>
						    <span id="uNameErr"></span>
						</li>
						<li><span class="title">Username<font style="padding-left:20px" class="error_line" color="#ff0000"></font></span>
						    <span class="border" style="position:relative">
						<input id="username" name="username" type="hidden" accesskey="n" value="" size="25" autocomplete="off">
						<input class="new-input1 new-color" tabindex="1" data-clear-btn="true" id="loginname" size="25" autocomplete="off" htmlescape="true" title="Please enter username">
		
						
						     <em class="icon1" id="usernamelogo"></em>
						<span style="position: absolute; font-size: 14px; left: 5px; top: 9px;display:none;" class="sfbest_username_place">Please enter username</span>
							</span>
						    <span id="sfbestNameErr"></span>
							
							
						</li>
						
						<li class="m-t12">
							<span class="title">Password</span> 
							<span class="border" style="position:relative">
								<input id="password" name="password" class="required" tabindex="2" type="password" value="" autocomplete="off">
							    <em class="icon2" id="passwordlogo"></em>
						<span style="position: absolute; font-size: 14px; left: 5px; top: 9px;display:none;" class="sfbest_password_place">Password</span>
							</span> 
							<span id="sfbestPwdErr"></span>
						</li>
						<div class="clear"></div>
						<li>
							<div style="">
								<a href="https://passport.e3mall.cn/reg/findpass/?returnUrl=http://www.e3mall.cn" class="forget-passWord">Forget password?</a>
							</div>
						</li>
						<li class="m-t5" id="btn_sub">
							<input type="hidden" name="lt" value="LT-7055357-If097ZfAK0WqnrgGeScsi6SndWWZFv-sfbest">
							<input type="hidden" name="execution" value="2b2fc397-b952-4639-b3c3-4aecf3ab23b8_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">
							<input type="hidden" name="_eventId" value="submit">
							<a href="javascript:void(0)" id="login_sub" class="login_btn">Login</a>
						</li>
					<div>
</div></form>
					</ul>
				</div>


				<ul class="blink">
					<li class="p-f10">
						<h2 class="h2">Login with your account：</h2>
						<div>
							<img id="uid_dimg_2" class="link" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAA1UlEQVR4AWOwDp9LUzTELRi1wDdtaf+8w9sPXDtx7h4Q7Tt2c92OS9SxwCZibtesg0+fv3756i0aoo4FkxcdgxhHEwtiite8ePmGhhas3HIB2cRL1x5t3HV5xebzEEQFC67efAI3/cDxW7aR86icip6/QIRP9+xD1E+myOHTPv3AqAVA1DJ1/76jN+EI2YKLVx8hS+0+cgMY5yRbMHfVKbBxhNGFqw+B6mloweY9V2hrAbAIIceCugl7gE6DI2QTT124jyyVXrNxEKaiUQtGLRi1YNQCAMs01I34bbYCAAAAAElFTkSuQmCC" class="rISBZc" height="32" width="32" alt=""></g-img>    </a>
							<img id="uid_dimg_4" class="link" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAABZUlEQVR4AWLQWfWQpmjUAjxo1IJRC2wBpJTDQkVRFIafKBujZrnGjbNd84wHiJNs27btrm3rrFbW1T73m20u/yMsW0cBg6zue5XCYLFQcC41JK0I3PsYaWvC+BkugYFljrbmWPp/H/86FOnhB2hGZbTg/dBhFoEBhsoEAO23Su9+5s/9nA0R/ANtXEgNJTtiAgObfB28gZaKt8Wen2ZarhRgjVL8nagGmetC+IFMb5lgqOtOZAtsLVgjcIhFZqD+RLYj0IFzGCwUcRctc7XgNNcyA7GBhAW+EWvnHK3XCjqDhg3OUpvAEegFTgAdA+nrwnuF4zCw7DSlwqOPscRxUAmtiYqY5NDXImz/6mPprlAP1sDgcjdFLokdCkPGW6Kstmbhtoim2IWNsRsvFXNsjURvBmvgiMROc11S0+BhVvmhFAUDhewrISgbg4/qlyUdeEnl+sBk7SOgfcBSb3jWaKMWjFoAABKespvtvzYlAAAAAElFTkSuQmCC" class="rISBZc" height="32" width="32" alt=""></g-img>    </a>
							<img id="uid_dimg_6" class="link" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACtklEQVR4AeyVA5AkQRREZ862bTMcZ9u2wzrbtm3bWNvmaW3b3rzKRa+NOWVEDoqvqv//LZPtUpoubC2cLIxKMveyku1UmkYAG2EoyFYESFEgQIos346dX7K7YiFyN8iFB17Sxx4NRxzVdcbYO6aotke5cgB42sFXDGDjF4FM+UbGY+5TK9FXKQBKOKTtjNz68CMAdQ+oVjyAXPicoRtyS8M5GA0PqRGwgm9gxxdMf2SBkNhEZCoxORXbVH9CXllBWHOvCla9sQNPbegRit3qDmhyWL1SYkCKA7kIxvoH1MBrr5KZllJ/IWnK3zskZ/SXEIDB1vm0trAO6K5ndNCYN5DRz9tgWxdhfnc8pQ2madXdSmDb7CeWWPfOHite22LoDWMegiDFj4GJ983hFBLD9IOPcEB0AjZ8+S6daIeaAwJFG/v8ouJh4ROB3uf1sFHpB34GRSMmMRlJKalISE5hLEHJIRCjbptAXlyAmY8tEZ2QjOzaK4qSbHs6AItTdhHwvpU3N0ZB+hYQhcGXDTi//AFSUtNPW5SY3lX3KJc7gKSwuESYeIXByDMM4XFJyC1bv0i0PKbJoCx/ALewWMwSwccApZe9skFwTAKyiXEjPYZyBziq48zUlVK09j4VvLL3Q3ZFxCdh/D0z7lG+AHFJKVj03DrHwhxHqOzimjMeWZQ/QKQ42ZQH5jkW5u896o7IJmYJa0T5A/BqJ+S6Wv7eqebwH+A/QOUBTMwHYFdpAaY9tACrVqyYECPMOr9d1UF6Gx7QcgLb2McxfCOOu2uaB2CLyk/EJ6WPo4PEmtOLqgOsZK2Pa4IDSUvPeWKFXud1pRre94Ie5jy1kvqnC+AWxzTYn2Odnud0MSdjDM0i1ObXOvDVBQjNEFciMJrhKHJwH5FmDgIPfNds4DuniO75P3r6HNY9BwATNI1Cu+uNpgAAAABJRU5ErkJggg==" class="rISBZc" height="32" width="32" alt=""></g-img></a>
							<img id="uid_dimg_8" class="link" src="data:image/png;base64,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" class="rISBZc" height="32" width="32" alt=""></g-img>    </a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- /login -->
	</div>
	<!-- /login_main -->
	<div class="footer">
		<p>
			Copyright @ Lychee Store<br>
		</p>
	</div>
	<!-- /footer -->
	<script type="text/javascript">
	var redirectUrl = "${redirect}";
	var LOGIN = {
			checkInput:function() {
				$("#sfbestNameErr").attr("class", "").html("").prev().attr("class", "border");
				$("#sfbestPwdErr").attr("class", "").html("").prev().attr("class", "border");
				
				if(!$("#formlogin #loginname").val()) {
					$("#sfbestNameErr").attr("class", "error").show().html("Please enter username").prev().attr("class", "border-error");
					return false;
				}
				if(!$("#formlogin input[name='password']").val()) {
				    $("#sfbestPwdErr").attr("class", "error").show().html("Please enter password").prev().attr("class", "border-error");
			        return false;
				}
				$("#username").val($("#loginname").val());
				return true;
			},
			doLogin:function() {
				$.post("/user/login", $("#formlogin").serialize(),function(data){
					if (data.status == 200) {
						jAlert('Login Successfully！',"info", function(){
							if (redirectUrl == "") {
								location.href = "http://www.lycheeStore.net";
							} else {
								location.href = redirectUrl;
							}
						});
						
					} else {
						jAlert("Unexpetec error:" + data.msg,"Failure");
					}
				});
			},
			login:function() {
				if (this.checkInput()) {
					this.doLogin();
				}
			}
		
	};
	$(function(){
		$("#login_sub").click(function(){
			LOGIN.login();
		});
	});
</script>

</html>