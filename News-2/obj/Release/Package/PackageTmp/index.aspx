<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="News_2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新余博物馆-首页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="js/jquery-1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#tab_text a').mouseover(function (i) {
                var id = $(this).attr('id');
                $("#tab_img li").hide();
                $("#li_" + id).show();
                $('#tab_text a').removeClass('on');
                $(this).addClass('on');
            });
        });
    </script>
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
                    <img src="images/logo.jpg" width="302" height="91" />
                </div>
                <div class="user_login">
                    <label id="w_login" style="display: none;">【<a href="#">登录</a>】【<a href="#">注册</a>】</label><label id="y_login">您好，<a href="#" style="text-decoration: underline;">Plum_may</a>&nbsp;<a href="#">【退出登录】</a></label>
                </div>
                <div class="search">
                    <%-- <input type="text" class="search_input" />                
                    <input type="button" class="search_btn" value="搜 索" />--%>
                    <asp:TextBox ID="TextBox1" runat="server" class="search_input"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜 索" class="search_btn" OnClick="Button1_Click" />
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
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <li><a href="list.aspx?id=<%# Eval("ID") %>"><%# Eval("Name") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%-- <li><a href="#">本馆概况</a></li>
                    <li><a href="#">博物馆游览</a></li>
                    <li><a href="#">博物馆资讯</a></li>
                    <li><a href="#">馆藏精品</a></li>
                    <li><a href="#">社会教育</a></li>
                    <li><a href="#">学术研究</a></li>
                    <li><a href="#">文保单位</a></li>--%>
                </ul>
            </div>
            <!--nva end-->
            <!--content start-->
            <div class="content">
                <!--banner start-->
                <div class="banenr">
                    <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="jpgc_detail.aspx">
                                    <img src="admin/<%# Eval("newsimgsrc") %>" width="310" height="240" />
                                </a></li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <!--banner end-->
                <div class="zu">
                    <div class="zu_left">
                        <!--博物馆资讯 start-->
                        <div class="Item">
                            <div class="Item_left">
                                <div class="I_title"><span class="font2 f_left">博物馆资讯</span><a href="#" class="f_right more"></a></div>
                                <ul class="list_news">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <li><a href="detail.aspx?nid=<%# Eval("newsID") %>" class="f_left">.<%#Convert.ToString(Eval("newsTitle")).Length > 11 ? Convert.ToString(Eval("newsTitle")).Substring(0, 11) + "..." : Eval("newsTitle")%></a><span class="f_right"><%# DataBinder.Eval(Container, "DataItem.newsDate", "{0:yyyy-MM-dd}")%> </span></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <a href="#">
                                <img src="upload/img9.jpg" class="f_right img_news" /></a>
                        </div>
                        <!--博物馆资讯 end-->
                        <div class="Item">
                            <!--社会教育 start-->
                            <div class="Item_SH">
                                <div class="I_title"><span class="font2 f_left">社会教育</span><a href="#" class="f_right more"></a></div>
                                <ul>

                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <li>&gt;<a href="detail.aspx?nid=<%# Eval("newsID") %>"><%#Convert.ToString(Eval("newsTitle")).Length > 11 ? Convert.ToString(Eval("newsTitle")).Substring(0, 11) + "..." : Eval("newsTitle")%></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <!--社会教育 end-->
                            <!--学术研究 start-->
                            <div class="Item_XS">
                                <div class="I_title"><span class="font2 f_left">学术研究</span><a href="#" class="f_right more"></a></div>
                                <ul>

                                    <asp:Repeater ID="Repeater3" runat="server">
                                        <ItemTemplate>
                                            <li>&gt;<a href="detail.aspx?nid=<%# Eval("newsID") %>"><%#Convert.ToString(Eval("newsTitle")).Length > 11 ? Convert.ToString(Eval("newsTitle")).Substring(0, 11) + "..." : Eval("newsTitle")%></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <!--学术研究 end-->
                        </div>
                        <div class="f_clear"></div>
                        <!--馆藏精品 start-->
                        <div class="Item">
                            <div class="I_title"><span class="font2 f_left">馆藏精品</span><a href="#" class="f_right more"></a></div>
                            <asp:Repeater ID="Repeater7" runat="server">
                                <ItemTemplate>
                                    <ul class="list_GC">
                                        <li><a href="detail.aspx?nid=<%# Eval("newsID") %>"><%# Convert.ToString(Eval("newsDesc")).Length>5? Convert.ToString(Eval("newsDesc")).Substring(0,5)+"...":Eval("newsimgsrc") %></a></li>
                                        
                                    </ul>
                                    <ul class="list_GCimg">
                                        <li><a href="detail.aspx?nid=<%# Eval("newsID") %>">
                                            <img src="admin/<%# Eval("newsimgsrc") %>" width="150" height="101" /></a></li>
                                        
                                    </ul>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                        <!--馆藏精品 end-->
                    </div>
                    <div class="zu_right">
                        <!--本馆概况 start-->
                        <div class="bggk">
                            <div class="bggk_title"></div>
                            <div class="bggk_text">
                                &nbsp;&nbsp;新余市博物馆位于新余市仙来中大道，建筑面积3952平方米，于1983年新余设立省辖市时，由罗坊会议纪念馆与原新余县历史文物陈列室合并而成，为地市级综合性博物馆。副县级建制，现有工作人员21人（其中高级职称2人、中级职称9人），内设办公室、陈列资料室、保管室、考古队。具体承担全市的文物保护、考古调查发掘以及文物陈列展览、藏品保管、宣传教育、学术研究等职能，并受委托行使文物执法职能。该馆自成立以来，通过考古发掘、征集等多种渠道， 不断...<a href="jpgc_detail.aspx" class="fotn1">[详细]</a>
                            </div>
                        </div>
                        <!--本馆概况 end-->
                        <!--博物馆浏览 start-->
                        <div class="bwgll">
                            <div class="bwgll_title"></div>
                            <div class="bwgll_tab">
                                <ul class="tab_img" id="tab_img">
                                    <li id="li_a1">
                                        <img src="upload/img5.jpg" width="180" height="120" /></li>
                                    <li style="display: none;" id="li_a2">
                                        <img src="upload/img6.jpg" width="180" height="120" /></li>
                                    <li style="display: none;" id="li_a3">
                                        <img src="upload/img7.jpg" width="180" height="120" /></li>
                                </ul>
                                <div class="tab_text" id="tab_text">
                                    <a href="jpgc.aspx" id="a1" class="on">历史馆陈列</a>
                                    <a href="jpgc.aspx" id="a2">工艺馆陈列</a>
                                    <a href="jpgc.aspx" id="a3">自然馆陈列</a>
                                </div>
                            </div>
                            <div class="bwgll_info">
                                <div class="info_img">
                                    <img src="upload/img8.jpg" width="107" height="73" />
                                </div>
                                <div class="info_text">
                                    <div class="info_textTop">笔底仙踪——明清佛教神像画展</div>
                                    <div class="info_textBottom">
                                        <asp:Button ID="Button2" runat="server" Text="点击进入" class="btn_1" OnClick="Button2_Click" />
                                        <%--<input type="button" value="点击进入" class="btn_1" />--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--博物馆浏览 end-->
                    </div>
                </div>
                <div class="f_clear"></div>
                <!--滚动图片 start-->
                <div class="gd_Img">
                    <div id="elem" class="gddiv">
                        <div class="innerElem">
                            <asp:Repeater ID="Repeater6" runat="server">
                                <ItemTemplate>
                                    <ul>

                                        <li>
                                            <a href="jpgc.aspx">
                                                <img src="admin/<%# Eval("newsimgsrc") %>" width="120" height="80" /></a></li>

                                    </ul>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                    <script language="javascript" type="text/javascript">
                        function slide(id) {
                            var timer;
                            var elem = document.getElementById(id);
                            var elem1 = elem.getElementsByTagName('ul')[0];
                            var elem2 = document.createElement('ul');
                            var div = elem.getElementsByTagName('div')[0];
                            this.Scroll = Scroll;
                            this.act = act;
                            function Scroll() {
                                if (elem.scrollLeft >= elem1.offsetWidth) {
                                    elem.scrollLeft -= elem1.offsetWidth;
                                }
                                else {
                                    elem.scrollLeft += 3;
                                }
                            }
                            function act() {
                                div.appendChild(elem2);
                                if (elem1.offsetWidth >= elem.offsetWidth) {
                                    elem2.innerHTML = elem1.innerHTML;
                                    timer = setInterval(this.Scroll, 80);
                                    elem.onmouseover = function () {
                                        clearInterval(timer);
                                    }
                                    elem.onmouseout = function () {
                                        timer = setInterval(Scroll, 80);
                                    }
                                }
                            }
                        }

                        $(".gddiv").each(function () {
                            var sli = new slide($(this).attr("id"));
                            sli.act();
                        });

                    </script>
                </div>
                <!--滚动图片 end-->
            </div>
            <!--content end-->
            <!--link start-->
            <div class="link">
                <div class="link_title">友情链接接</div>
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
