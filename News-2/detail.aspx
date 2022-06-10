<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="News_2.detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新余博物馆-新闻列表</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="left_bgImg"></div>
        <div class="right_bgImg"></div>
        <!--header start-->
        <div class="header">
            <div class="header_top"></div>
            <div class="header_text">
                <div class="logo">
                    <img src="images/logo.jpg" width="302" height="91" /></div>
                <div class="search">
                    <input type="text" class="search_input" />
                    <input type="button" class="search_btn" value="搜 索" />
                </div>
            </div>
        </div>
        <!--header end-->
        <!--middle start-->
        <div class="middle">
            <!--nva start-->
            <div class="nva">
                <ul>
                    <li><a href="index.aspx">首页</a></li>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li><a href="list.aspx?id=<%# Eval("ID") %>"><%# Eval("Name") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    
                    
                </ul>
            </div>
            <!--nva end-->
            <!--content start-->
            <div class="content">
                <!--banner start-->
                <div class="banenr">
                    <ul>
                        <li><a href="#">
                            <img src="upload/img1.jpg" width="310" height="240" />
                        </a></li>
                        <li><a href="#">
                            <img src="upload/img2.jpg" width="310" height="240" />
                        </a></li>
                        <li><a href="#">
                            <img src="upload/img3.jpg" width="310" height="240" />
                        </a></li>
                    </ul>
                </div>
                <!--banner end-->
                <div class="EJ_content">
                    <div class="left">
                        <!--二级导航 start-->
                        <div class="Item">
                            <div class="Item_title">本馆概况</div>
                            <ul>
                                <li><a href="#">馆长致辞</a></li>
                                <li><a href="#">现任领导</a></li>
                                <li><a href="#">组织机构</a></li>
                                <li><a href="#">历史沿革</a></li>
                            </ul>
                        </div>
                        <!--二级导航 end-->
                        <!--联系我们 start-->
                        <div class="Item">
                            <div class="Item_title">联系我们</div>
                            <p class="lxwm_Info">
                                <span class="fotn5">新余市博物馆</span><br />
                                地址：江西省新余市渝水区<br />
                                邮编：338004<br />
                                总机：+86-0790-6221921
                            </p>
                        </div>
                        <!--联系我们 end-->
                        <div class="left_bg"></div>
                    </div>
                    <div class="right">
                        <div class="title">
                            <span class="f_left title_name">本馆概况</span>
                            <span class="f_right title_map"><strong>当前位置：</strong><a href="#">本馆概况</a>&nbsp;&gt;&nbsp;馆长致辞</span>
                        </div>
                        <div class="content_Info">
                            <div class="content_title">
                                <div class="title_top">
                                    <asp:Label ID="newsTitle" runat="server" Text="Label"><%# Eval("newsTitle") %></asp:Label>    </div>
                                <div class="title_bottom"><span>来源：新余博物馆</span><span><asp:Label ID="author" runat="server" Text="Label"><%# Eval("newsAuthor") %> </asp:Label> </span><span><asp:Label ID="date" runat="server" Text="Label"></asp:Label><%# Eval("newsDate") %></span></div>
                            </div>
                             <div>
                                 <asp:Label ID="labimg" runat="server" Text="" Visible="false"></asp:Label>
                                 <img src="admin/<%=this.labimg.Text%>" />
                             </div> 
                            <div class="content_text">
                                <asp:Label ID="countent" runat="server" Text="Label"><%# Eval("newsCountent") %></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--content end-->
            <!--link start-->
            <div class="link">
                <div class="link_title">友情链接</div>
                <ul>
                    <li><a href="#">山西博物院</a></li>
                    <li><a href="#">浙江省博物馆</a></li>
                    <li><a href="#">湖北省博物馆</a></li>
                    <li><a href="#">山西博物院</a></li>
                    <li><a href="#">浙江省博物馆</a></li>
                    <li><a href="#">湖北省博物馆</a></li>
                    <li><a href="#">山西博物院</a></li>
                    <li><a href="#">浙江省博物馆</a></li>
                    <li><a href="#">湖北省博物馆</a></li>
                    <li><a href="#">山西博物院</a></li>
                    <li><a href="#">浙江省博物馆</a></li>
                    <li><a href="#">湖北省博物馆</a></li>
                </ul>
            </div>
            <!--link end-->
        </div>
        <!--middle end-->
        <!--footer start-->
        <div class="footer">
            <span class="font3">你是本站第：<span class="fotn4">336642</span> 位读者</span><br />
            地址：江西省新余市渝水区抱石大道470号 | 邮编：338004 | 办公电话：0790-6221921<br />
            版权所有：新余数字文化网
        </div>
        <!--footer end-->
    </form>
</body>
</html>
