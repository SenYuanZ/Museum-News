<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="News_2.admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color: #f2f9fd;">
    <form id="form1" runat="server">
        <%--<body style="background-color:#f2f9fd;">--%>
        <div class="header bg-main">
            <div class="logo margin-big-left fadein-top">
                <h1>
                    <img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
            </div>
            <div class="head-l"><a class="button button-little bg-green" href="../index.aspx" target="_blank"><span class="icon-home"></span>前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.aspx"><span class="icon-power-off"></span> 退出登录</a> </div>
        </div>
        <div class="leftnav">
            <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
            <h2><span class="icon-user"></span>用户设置</h2>
            <ul style="display: block">
                <li><a href="AddUser.aspx" target="right"><span class="icon-caret-right"></span>添加用户</a></li>
                <li><a href="Userinfo.aspx" target="right"><span class="icon-caret-right"></span>用户查询</a></li>
            </ul>
            <h2><span class="icon-user"></span>新闻设置</h2>
            <ul style="display: block">
                <li><a href="AddNews.aspx" target="right"><span class="icon-caret-right"></span>新闻添加</a></li>
                <%--<li><a href="page.html" target="right"><span class="icon-caret-right"></span>单页管理</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>首页轮播</a></li>   
    <li><a href="book.html" target="right"><span class="icon-caret-right"></span>留言管理</a></li>--%>
                <%--<li><a href="column.aspx" target="right"><span class="icon-caret-right"></span>栏目管理</a></li>--%>
                <li><a href="AddColumn.aspx" target="right"><span class="icon-caret-right"></span>添加栏目</a></li>
            </ul>

            <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
            <ul>
                <li><a href="NewsList.aspx" target="right"><span class="icon-caret-right"></span>内容管理</a></li>
                <%--<li><a href="AddColumn.aspx" target="right"><span class="icon-caret-right"></span>添加栏目</a></li>--%>
                <li><a href="column.aspx" target="right"><span class="icon-caret-right"></span>栏目管理</a></li>
                <%--<li><a href="cate.html" target="right"><span class="icon-caret-right"></span>分类管理</a></li>--%>
            </ul>
        </div>
        <script type="text/javascript">
            $(function () {
                $(".leftnav h2").click(function () {
                    $(this).next().slideToggle(200);
                    $(this).toggleClass("on");
                })
                $(".leftnav ul li a").click(function () {
                    $("#a_leader_txt").text($(this).text());
                    $(".leftnav ul li a").removeClass("on");
                    $(this).addClass("on");
                })
            });
        </script>
        <ul class="bread">
            <li><a href="{:U('Index/info')}" target="right" class="icon-home">首页</a></li>
            <li><a href="##" id="a_leader_txt">网站信息</a></li>
            <li><b>当前语言：</b><span style="color: red;">中文</php></span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
        </ul>
        <div class="admin">
            <iframe scrolling="auto" rameborder="0" src="Userinfo.aspx" name="right" width="100%" height="100%"></iframe>
        </div>
    </form>
</body>
</html>
