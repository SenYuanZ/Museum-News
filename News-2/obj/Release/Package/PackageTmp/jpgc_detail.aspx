<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jpgc_detail.aspx.cs" Inherits="News_2.jpgc_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新余博物馆-精品馆藏内页</title>
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
                             <li><a href="list.aspx?id=<%# Eval("ID")%>"><%# Eval("Name") %></a></li>
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
                        <li><a href="jpgc.aspx">
                            <img src="upload/img1.jpg" width="310" height="240" />
                        </a></li>
                        <li><a href="jpgc.aspx">
                            <img src="upload/img2.jpg" width="310" height="240" />
                        </a></li>
                        <li><a href="jpgc.aspx">
                            <img src="upload/img3.jpg" width="310" height="240" />
                        </a></li>
                    </ul>
                </div>
                <!--banner end-->
                <div class="EJ_content">
                    <div class="left">
                        <!--二级导航 start-->
                        <div class="Item">
                            <div class="Item_title">馆藏精品</div>
                            <ul>
                                <li><a href="#">瓷器</a></li>
                                <li><a href="#">玉器</a></li>
                                <li><a href="#">书法</a></li>
                                <li><a href="#">绘画</a></li>
                                <li><a href="#">金银器</a></li>
                                <li><a href="#">漆木器</a></li>
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
                            <span class="f_left title_name">馆藏精品</span>
                            <span class="f_right title_map"><strong>当前位置：</strong><a href="#">馆藏精品</a>&nbsp;&gt;&nbsp;瓷器</span>
                        </div>
                        <div class="content_Info">
                            <div class="content_title">
                                <div class="title_top">新余市博物馆相关信息介绍 </div>
                                <div class="title_bottom"><span>来源：新余博物馆</span><span>编辑：admin</span><span>时间：2014.05.08</span></div>
                            </div>
                            <div class="content_text">
                                <div class="gc_img">
                                    <img src="upload/img12.jpg" width="412" height="398" /></div>
                                &nbsp;&nbsp;&nbsp;&nbsp;明、吴之琯，明代万历年间人，字汝廷，自小称九蓬头，常州阳湖人，是一位善画人物、佛像、山水、花鸟的全能画家。但其传世作品极少。此山水四屏条作于绢本之上，全用细微的笔触画就，工致而不呆板，一无匠气，非常动人，有着文人的格调和气息。
                                <div class="up_Page">
                                    <a href="#" class="f_left">上一篇</a>
                                    <a href="#" class="f_right">下一篇</a>
                                </div>
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
