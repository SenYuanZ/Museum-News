<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddColumn.aspx.cs" Inherits="News_2.admin.AddColumn1" %>

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
    <form id="form1" runat="server" class="form-x">
    <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 添加栏目</strong></div>
  <div class="body-content">
   
     
      <div class="form-group">
        <div class="label">
          <label for="sitename">栏目名称：</label>
        </div>
        <div class="field">
          <%--<input type="password" class="input w50" id="mpass" name="mpass" size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />--%>   
            <asp:TextBox ID="TextBox1" runat="server" class="input w50" name="mpass" size="50" placeholder="请输入栏目名称" ></asp:TextBox>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">序号：</label>
        </div>
        <div class="field">
          <%--<input type="password" class="input w50" name="newpass" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=5:新密码不能小于5位" />--%>  
            <asp:TextBox ID="TextBox2" runat="server" class="input w50" name="newpass" size="50" placeholder="请输入序号"></asp:TextBox>
        </div>
      </div>
   
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <%--<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>--%>   
            <asp:Button ID="Button1" runat="server" Text="提交" class="button bg-main icon-check-square-o" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
      </div>      
    
  </div>
</div>
    </form>
</body>
</html>
