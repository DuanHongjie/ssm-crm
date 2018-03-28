<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>国酒茅台CRM系统登录</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/form-elements.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-57-precomposed.png">
        <script type="text/javascript">	
	function login(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		var roleName=$("#roleName").val();
		if(userName==null||userName==""){
			alert("用户名不能为空！");
			return;
		}
		if(password==null||password==""){
			alert("密码不能为空！");
			return;
		}
		if(roleName==null||roleName==""){
			alert("请选择用户类型！");
			return;
		}
             // ajax请求 
            $.ajax({
            	url:"${pageContext.request.contextPath}/user/login.do",
            	type:"post",
            	data:{
            		"userName":userName,
            		"password":password,
            		"roleName":roleName
            	},
            	dataType:"text",
            	success:function(data){
            		if(data != null&&data == "success"){
            			window.location.href="${pageContext.request.contextPath}/index/index.do";
            		}else if(data != null&&data == "error"){
            			alert("用户名或密码错误！");
            		}else{
            			alert("数据库连接失败！")
            		}
            	}
            }); 
	}
</script>
</head>
 <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>国酒茅台CRM管理系统</h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>登录系统</h3>
                            		<p>请输入您的账号和密码</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="${pageContext.request.contextPath}/user/login.do" method="post" class="login-form" id="adminlogin" name="adminlogin" >
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">账号</label>
			                        	<input type="text" name="userName" placeholder="账号" class="form-username form-control" id="userName">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="password" placeholder="密码" class="form-password form-control" id="password">
			                        </div> 
			                        <div class="form-group">
			                        	
											<select id="roleName" name="roleName" class="form-username form-control" style="height: 50px">
								<option value="">请选择用户类型...</option>
								<option value="系统管理员"  ${'系统管理员'==user.roleName?'selected':'' }>系统管理员</option>
								<option value="销售主管"  ${'销售主管'==user.roleName?'selected':'' }>销售人员</option>
								<option value="客户经理"  ${'客户经理'==user.roleName?'selected':'' }>客户经理</option>
								<option value="高管"  ${'高管'==user.roleName?'selected':'' }>高管</option>
							</select>
								</div>
			                        <button type="button" class="btn" onclick="login()">登录</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    


        <!-- Javascript -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.backstretch.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
</html>