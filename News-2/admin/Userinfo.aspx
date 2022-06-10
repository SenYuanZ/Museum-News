<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userinfo.aspx.cs" Inherits="News_2.admin.Userinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel admin-panel">
            <div class="panel-head"><strong class="icon-reorder">内容列表</strong></div>
            <div class="padding border-bottom">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入搜索关键字" name="keywords" class="input" Style="width: 250px; line-height: 17px; display: inline-block"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="搜索" class="button border-main icon-search" OnClick="Button1_Click" />
                <%--<button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span>添加分类</button>--%>
            </div>
            <table class="table table-hover text-center">
                <tr>
                    <th width="5%">ID</th>
                    <th width="15%">一级分类</th>
                    <th width="10%">排序</th>
                    <th width="10%">操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("UserName") %></td>
                            <td><%# Eval("UserPwd") %></td>
                            <td>
                                <div class="button-group">
                                    <%--<a class="button border-main" href="cateedit.html">
                                        <span class="icon-edit"></span>修改</a> --%>  
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="info" CommandArgument='<%# Eval("ID") %>' class="button border-main"><span class="icon-edit">详细</span></asp:LinkButton>                                
                                    <asp:LinkButton ID="UserAltrt" runat="server" CommandName="alter" CommandArgument='<%# Eval("ID") %>' class="button border-main"><span class="icon-edit">修改</span></asp:LinkButton>
                                    <asp:LinkButton ID="UserDel" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>' class="button border-red" OnClientClick="javascript:return confirm('真的要删除吗？');"><span class="icon-trash-o">删除</span></asp:LinkButton>
                                    <%-- <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)">
                                            <span class="icon-trash-o"></span>删除</a>--%>
                                </div>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <script type="text/javascript">
            function del(id, mid) {
                if (confirm("您确定要删除吗?")) {

                }
            }
        </script>
    </form>
</body>
</html>
