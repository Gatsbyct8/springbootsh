<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>成功登录</title>
 <script language="javascript">
        var secs = 3; //倒计时的秒数
        var URL ;
        function Load(url){
            URL = url;
            for(var i=secs;i>=0;i--)
            {
                window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000);
            }
        }
        function doUpdate(num)
        {
            document.getElementById('ShowDiv').innerHTML = '<h1 style="font-size: 50px;color: #71d2c3;text-align: center">登录成功！！！将在'+num+'秒后自动跳转到主页</h1>' ;
            if(num == 0) { window.location = URL; console.log(URL)}
        }
    </script>


</head>

<body onload="Load('/index.html')">
<div id="ShowDiv"></div>
</body>
</html>


