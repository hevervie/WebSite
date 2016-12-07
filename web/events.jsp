<%@ page import="java.util.ArrayList" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.xiyoulinux.model.Events" %><%--
  Created by IntelliJ IDEA.
  User: zhoupan
  Date: 11/5/16
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/xiyoulinux.png">
    <title>西邮Linux兴趣小组</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css">

</head>

<body>
<!--导航栏-->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-logo" href="#"><img src="images/xiyoulinux.png"
                                                 style="width: 50px;height: 50px;">西邮Linux兴趣小组</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
            <ul class="nav navbar-nav">
                <li><a href="/index.jsp">HOME</a></li>
                <li class="active"><a href="/events">EVENTS</a></li>
                <li><a href="http://blog.xiyoulinux.org">BLOG</a></li>
                <li><a href="login.jsp">LOGIN</a></li>
                <li><a href="/about">ABOUT</a></li>
            </ul>
        </div>
    </div>
</div>
<!--导航栏结束-->

<div class="container mtb" id="container">
    <div class="row">
        <!-- BLOG POSTS LIST -->
        <%
            ArrayList<Events> eventsList = (ArrayList<Events>) request.getAttribute("eventsList");

            for (int i = 0; i < eventsList.size(); i++) {
        %>
        <div class="col-lg-10 col-lg-offset-1" id="events-list">
            <!-- Blog Post -->
            <div class="row event" data-event-date="<%=eventsList.get(i).getDate()%>">
                <div class="col-lg-9">
                    <div class="event-title">
                        <a href="#"><h3 class="ctitle"><%=eventsList.get(i).getTitle()%>
                        </h3></a>
                    </div>
                    <div class="event-meta">
                        <span><strong><i class="fa fa-calendar"></i> 时间: </strong><%=eventsList.get(i).getDate()%>&nbsp;&nbsp;<%=eventsList.get(i).getTime()%></span>
                        <span><strong><i
                                class="fa fa-map-marker"></i> 地点:</strong><%=eventsList.get(i).getAddress()%></span>
                        <span class="event-tags">
                            <%
                                String label = eventsList.get(i).getLabel();
                                String str = "";
                                for (int j = 0; j < label.length(); j++) {
                                    if (label.charAt(j) == ',' || label.charAt(j) == '，') {
                                        if (!(str.equals("") || str.equals(",") || str.equals("，"))) {
                            %>
                                        <span class="label label-success"><%=str%></span>
                            <%
                                        }
                                        str = "";
                                    } else {
                                        str += label.charAt(j);
                                    }
                                }
                                if (!(str.equals("") || str.equals(",") || str.equals("，"))) {
                            %>
                            <span class="label label-success"><%=str%></span>
                            <%
                                }
                            %>
                        </span>
                    </div>
                    <div class="event-content">
                        <%=eventsList.get(i).getContent()%>
                        <p>阅读量：<%=eventsList.get(i).getReader()%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="all_events.html">[Read
                            More]</a></p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <img class="img-responsive event-poster" src="<%=eventsList.get(i).getPoster()%>">
                </div>
            </div>
            <div class="hline"></div>
            <div class="spacing"></div>
        </div>
        <%}%>
    </div>
</div>
<!--网站底部-->
<div id="footerwrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <p class="heading">链接</p>
                <ul>
                    <li><a href="http://222.24.19.3:81/xiyoucs/index.asp">西安邮电大学计算机学院</a></li>
                    <li><a href="http://www.kerneltravel.net/">Linux内核之旅</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <p class="heading">社区</p>
                <ul>
                    <li>邮件列表: <a href="https://groups.google.com/forum/#!forum/xiyoulinux">xiyoulinux</a></li>
                    <li>新浪微博: <a href="http://weibo.com/xylinux">@西邮Linux兴趣小组</a></li>
                    <li>人人主页: <a href="http://page.renren.com/601367653?checked=true">@西邮Linux兴趣小组</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <p class="heading">地址</p>
                <ul>
                    <li>
                        陕西省 西安市 长安区<br>
                        西安邮电大学长安校区<br>
                        东区 教学实验楼 FZ118<br>
                        邮编：710121
                    </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <p class="heading">关注我们</p>
                <ul>
                    <li>
                        <img class="qr" src="https://www.xiyoulinux.org/assets/images/weixin.jpg"
                             style="width: 80px;height: 80px;">
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--网站底部-->

<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/retina-1.1.0.js"></script>
<script type="text/javascript" src="/js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="/js/jquery.hoverex.min.js"></script>
<script type="text/javascript" src="/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="/js/custom.js"></script>
<script type="text/javascript" src="/js/main.js"></script>

<script>
//    function scroll() {
//        var container = document.getElementById("container");
        //可见高度
//        var viewHigh = container.high;
//        alert(viewHigh);
        //内容高度
//        var containerHigh = container.scrollHeight;
//        alert(containerHigh);
//        //滚动高度
//        var scrollTop = container.scrollTop;
//        alert(scrollTop);
//        if (containerHigh - scrollTop <= 100) {
//            alert('test');
//        }
//        var wScrollY = window.scrollY; // 当前滚动条位置
//        alert(wScrollY);
//        var wInnerH = window.innerHeight; // 设备窗口的高度（不会变）
//        alert(wInnerH);
//        var bScrollH = document.body.scrollHeight; // 滚动条总高度
//        alert(bScrollH);
//        if (wScrollY + wInnerH >= bScrollH-100) {
//            alert("test");
//        }
//    }
//    onload = scroll;
        scrollBottomTest =function(){
            $("#contain").scroll(function(){
                var $this =$(this),
                    viewH =$(this).height(),//可见高度
                    contentH =$(this).get(0).scrollHeight,//内容高度
                    scrollTop =$(this).scrollTop();//滚动高度
                //if(contentH - viewH - scrollTop <= 100) { //到达底部100px时,加载新内容
                if(scrollTop/(contentH -viewH)>=0.95){ //到达底部100px时,加载新内容
                    // 这里加载数据..
                }
            });
        }
</script>

</body>
</html>


</body></html>