<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache,must-revalidate">
<title>Personal Register</title>
<link rel="stylesheet" type="text/css" href="/css/headerfooter.css" />
<link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css" />
<link rel="stylesheet" type="text/css" href="/css/headerfooterindex.css" />s
<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/passport.common.js?v20140531"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/js/png.js?v20140521"></script>
<!--mainStart-->
<link rel="stylesheet" type="text/css" href="/css/reg.css?v20140432" />
<script type="text/javascript" src="/js/allMail.js?v20140430"></script>
<script type="text/javascript" src="/js/reg.js?v20150122"></script>
</head>
<body>
	<!-- header -->
	<div class="header">
		<a href="http://www.e3mall.cn"><img src="/images/logo.png"
			border="0" /><span></span></a>
	</div>


	<!-- reg_main -->
	<div class="tabBox clear">
		<span class="reg_hide reg_show regMr5" id="regper">Persional
			User</span> <span class="reg_hide" id="regcom" style="">Enterprise
			User</span>
	</div>
	<!--个人用户-->
	<div class="reg_main reg_border regTab" id="perDiv">
		<ul class="individualUserBg">
			<form id="regForm_mod" name="regForm_mod" method="post">

				<li class="regMb30"><label><font>*</font> Username：</label> <span
					class="regM defaultBorder"> <input id="regName"
						name="username" class="regInput" type="text"
						onkeyup="mail_div(event);"
						onfocus="showtip('regName','userMamErr',8);" onblur="ckmem();"
						autocomplete="off" maxlength="80" /> <em></em>
				</span> <span class="regInput" id="userMamErr"></span></li>
				<div node-type="layer" class="accountSearch" style="display: none;"
					id="person_mail"></div>
				<li><label><font>*</font> Password：</label> <span
					class="regM defaultBorder"> <input id="pwd" name="password"
						class="regInput" autocomplete="off" type="password"
						onfocus="showPwdtip('pwd','passwordErr',2);"
						onkeyup="ckpwd(0,1);" onblur="ckpwd(0,0);" /> <em></em>
				</span> <span class="regInput" id="passwordErr"></span></li>
				<li class="safetyLayer regPl191" id="pwdStrong"><font
					style="font-size: 12px;">Security：</font><em class="default">Week</em><em
					class="default">Medium</em><em class="default">Strong</em></li>

				<li class="regMb30"><label><font>*</font>Confirm
						Password：</label> <span class="regM defaultBorder"> <input
						id="pwdRepeat" name="password2" autocomplete="off"
						class="regInput" type="password"
						onfocus="showtip('pwdRepeat','password2Err',3);"
						onblur="ckpwd2();" /> <em></em>
				</span> <span class="regInput" id="password2Err"></span></li>
				<li class="regMb30"><label><font>*</font> Email：</label> <span
					class="regM defaultBorder"> <input id="email" name="email"
						autocomplete="off" class="regInput" type="email"
						onfocus="showtip('email','emailErr',1);"
						onblur="$('#emailErr').html('')" /> <em></em>
				</span> <span class="regInput" id="emailErr"></span></li>



				<li class="regPl88"><span class="regM"
					style="margin-left: 29px"> <input id="AgreeId"
						name="AgreeId" type="checkbox" checked="" onclick="ckAgree();">
						<a href="https://passport.e3mall.cn/xy.html" target="_blank"
						class="checkTitle">I've read and agree<font
							style="font-size: 12px;">《LycheeStore Terms and
								Conditions》</font></a></span> <span id="AgreeIdErr"></span></li>
				<li class="register regPl88 regMt10" id="sub_per"
					style="margin-left: 29px"><input type="hidden" id="tjuid"
					name="tjuid" value=""> <a href="javascript:void(0);"
					class="registerNow" id="reg_per_data" onclick="REGISTER.reg()">Register</a></li>
				<br /> <br />
			</form>
		</ul>
	</div>


	<!--mainOver-->

	<!--footerStart-->
	<div class="footer">
		<p>
			Copyright© Lychee Store<br />
		</p>
	</div>
	<!-- /footer -->
	<script type="text/javascript">
	var REGISTER={
			param:{
				//单点登录系统的url
				surl:""
			},
			inputcheck:function(){
				var flag = true;
				var  usernameRegex = /^[a-zA-Z][a-zA-Z0-9_]{3,15}$/;  
		        //密码：  
		        var passwordRegex = /^\w{6,122}$/;  
		        //邮箱：  
		        var emailRegex = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;  
				//不能为空检查
				if (!usernameRegex.test($("#regName").val())) {
					showError("regName","userMamErr",defaultArr[8]);
					flag = false;
				}
				if (!passwordRegex.test($("#pwd").val())) {
					showError("pwd","passwordErr",pwdArr[0]);
					flag = false;
				}
				if (!emailRegex.test($("#email").val())) {
					showError("email","emailErr",memArr[0]);
					flag = false;
				}
				//密码检查
				if ($("#pwd").val() != $("#pwdRepeat").val()) {
					showError("pwdRepeat","password2Err",pwd2Arr[1]);
					flag = false;
				}
				return flag;
			},
			beforeSubmit:function() {
					//检查用户是否已经被占用
					$.ajax({
		            	url : REGISTER.param.surl + "/user/check/"+escape($("#regName").val())+"/1?r=" + Math.random(),
		            	success : function(data) {
		            		if (data.data) {
		            			//检查手机号是否存在
		            			$.ajax({
		            				url : REGISTER.param.surl + "/user/check/"+$("#email").val()+"/3?r=" + Math.random(),
					            	success : function(data) {
					            		if (data.data) {
						            		REGISTER.doSubmit();
					            		} else {
					            			showError("email","emailErr",defaultArr[9]);
					            		}
					            	}
		            			});
		            		} else {
		            			showError("regName","userMamErr",defaultArr[10]);
		            		}	
		            	}
					});
		            	
			},
			doSubmit:function() {
				$.post("/user/register",$("#regForm_mod").serialize(), function(data){
					if(data.status == 200){
						jAlert('Successfully registered! Please login.',"Info", function(){
							REGISTER.login();
						});
					} else {
						jAlert("Register failed","Info");
					}
				});
			},
			login:function() {
				 location.href = "/page/login";
				 return false;
			},
			reg:function() {
				if (this.inputcheck()) {
					this.beforeSubmit();
				}
			}
		};
	</script>
</body>
</html>
