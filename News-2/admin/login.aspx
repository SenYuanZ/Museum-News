<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="News_2.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <%--<input type="text" class="input input-big" name="name" placeholder="登录账号" data-validate="required:请填写账号" />--%>
                            <asp:TextBox ID="txUseName" runat="server" class="input input-big" name="name" placeholder="登录账号" data-validate="required:请填写账号"></asp:TextBox>
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                           <%-- <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />--%>
                            <asp:TextBox ID="txPwd" runat="server" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码"></asp:TextBox>
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                  
                </div>
                <div style="padding:30px;">
                    <%--<input type="submit" class="button button-block bg-main text-big input-big" value="登录">--%>
                    <asp:Button ID="butLogin" runat="server" Text="登入" class="button button-block bg-main text-big input-big" OnClick="butLogin_Click" />
                </div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
                    
        </div>
    </div>
</div>
    </form>
</body>
</html>
