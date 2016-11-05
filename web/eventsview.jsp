<%--
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
    <link rel="shortcut icon" href="/images/xiyoulinux.png">
    <title>西邮Linux兴趣小组</title>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/css/main.css">

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
            <a class="navbar-logo" href="#"><img src="/images/xiyoulinux.png"
                                                 style="width: 50px;height: 50px;">西邮Linux兴趣小组</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
            <ul class="nav navbar-nav">
                <li><a href="/index.html">HOME</a></li>
                <li class="active"><a href="/all_events.html">EVENTS</a></li>
                <li><a href="http://blog.xiyoulinux.org">BLOG</a></li>
                <li><a href="http://cs.xiyoulinux.org">LOGIN</a></li>
                <li><a href="/about.html">ABOUT</a></li>
            </ul>
        </div>
    </div>
</div>
<!--导航栏结束-->

<div class="container mtb">
    <div class="row">
        <!-- BLOG POSTS LIST -->
        <div class="col-lg-10 col-lg-offset-1" id="events-list">
            <!-- Blog Post -->
            <div class="row event" data-event-date="2016-05-29">
                <div class="col-lg-9">
                    <div class="event-title">
                        <a href="#"><h3 class="ctitle"><%=request.getAttribute("title")%>
                        </h3></a>
                    </div>
                    <div class="event-meta">

                        <span><strong><i class="fa fa-calendar"></i> 时间: </strong><%=request.getAttribute("date")%>&nbsp;&nbsp;<%=request.getAttribute("time")%></span>
                        <span><strong><i class="fa fa-map-marker"></i> 地点:</strong><%=request.getAttribute("address")%></span>
                        <span class="event-tags">
                            <%
                                String label = (String) request.getAttribute("label");
                                String str = "";
                                for (int i = 0; i < label.length(); i++) {
                                    if (label.charAt(i) == ',' || label.charAt(i) == '，') {
                                        if (!(str.equals("") || str.equals(",") || str.equals("，"))) {
                            %>
                                        <span class="label label-success"><%=str%></span>
                            <%
                                        }
                                        str = "";
                                    } else {
                                        str += label.charAt(i);
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
                        <%=request.getAttribute("content")%>
                        <p>阅读量：<%=request.getAttribute("reader")%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="all_events.html">[Read More]</a></p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <img class="img-responsive event-poster" src="<%=request.getAttribute("poster")%>">
                </div>
            </div>
            <div class="hline"></div>
            <div class="spacing"></div>
        </div>
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

</body>
</html>


</body></html>