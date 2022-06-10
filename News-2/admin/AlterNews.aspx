<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterNews.aspx.cs" Inherits="News_2.admin.AlterNews" %>

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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容
      </strong></div>
  <div class="body-content">

      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" value="" name="title" data-validate="required:请输入标题" />--%>
            <asp:TextBox ID="Title" runat="server" class="input w50" value="" name="title" data-validate="required:请输入标题"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <%--<input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">--%>
            <asp:FileUpload ID="FileUpload1" runat="server"  class="button bg-blue margin-left " style="float:left;"/>
           <div class="tipss">图片尺寸：500*500</div>
        </div>
      </div>     
      
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>分类标题：</label>
          </div>
          <div class="field">
            <%--<select name="cid" class="input w50">
              <option value="">请选择分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
            </select>--%>
<asp:DropDownList ID="DropDownList1" runat="server" name="cid" class="input w50"></asp:DropDownList>
            <div class="tips"></div>
          </div>
        </div>
        <div class="form-group">
          <div class="label">
            <label>其他属性：</label>
          </div>
          <div class="field" style="padding-top:8px;"> 
            <%--首页 <input id="ishome"  type="checkbox" />
            推荐 <input id="isvouch"  type="checkbox" />
            置顶 <input id="istop"  type="checkbox" /> --%>
         <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox><asp:Label ID="Label1" runat="server" Text="首页"></asp:Label>
         <asp:CheckBox ID="CheckBox2" runat="server"></asp:CheckBox><asp:Label ID="Label2" runat="server" Text="推荐"></asp:Label>
         <asp:CheckBox ID="CheckBox3" runat="server"></asp:CheckBox><asp:Label ID="Label3" runat="server" Text="置顶"></asp:Label>
          </div>
        </div>
      </if>
      <div class="form-group">
        <div class="label">
          <label>描述：</label>
        </div>
        <div class="field">
          <%--<textarea class="input" name="note" style=" height:90px;"></textarea>--%>
            <asp:TextBox ID="Description" runat="server" class="input" name="note" style=" height:90px;"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>内容：</label>
        </div>
        <div class="field">
          <%--<textarea name="content" class="input" style="height:450px; border:1px solid #ddd;"></textarea>--%>
            <asp:TextBox ID="content" runat="server" class="input" style="height:450px; border:1px solid #ddd;"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>    
      <div class="clear"></div>             
      <div class="form-group">
        <div class="label">
          <label>排序：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="sort" value="0"  data-validate="number:排序必须为数字" />--%>
            <asp:TextBox ID="sort" runat="server" class="input w50" name="sort" value="0"  data-validate="number:排序必须为数字"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>发布时间：</label>
        </div>
        <div class="field"> 
          <script src="js/laydate/laydate.js"></script>
          <%--<input type="text" class="laydate-icon input w50" name="datetime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />--%>
            <asp:TextBox ID="Date" runat="server" class="laydate-icon input w50" name="datetime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>作者：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="authour" value=""  />--%>
            <asp:TextBox ID="author" runat="server" class="input w50" name="authour"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>点击次数：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="views" value="" data-validate="member:只能为数字"  />--%>
            <asp:TextBox ID="Click" runat="server" class="input w50" name="views" value="" data-validate="member:只能为数字"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <%--<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>--%>
            <asp:Button ID="Submit" runat="server" Text="提交" class="button bg-main icon-check-square-o" type="submit" OnClick="Submit_Click" />
        </div>
      </div>
    
  </div>
</div>
    </form>
</body>
</html>
