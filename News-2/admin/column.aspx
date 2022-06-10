<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="column.aspx.cs" Inherits="News_2.admin.column" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
    <form id="form1" runat="server" class="form-x" action="">
    <div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <div class="padding border-bottom">  
  <%--<a class="button border-yellow" href=""><span class="icon-plus-square-o"></span> 添加内容</a>--%>
      <asp:Button ID="AddBut" runat="server" Text="添加内容" class="button border-yellow icon-plus-square-o" />
  </div> 
  <table class="table table-hover text-center">
    <tr>
      <th width="5%">ID</th>     
      <th>栏目名称</th>  
      <th>排序</th>     
      <th width="250">操作</th>
    </tr>
      <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
          <ItemTemplate>
              <tr>
      <td><%# Eval("ID") %></td>      
      <td><%# Eval("Name") %></td>  
      <td><%# Eval("serial") %></td>      
      <td>
      <div class="button-group">
          <asp:LinkButton ID="LinkButton1" runat="server" class="button border-main" CommandName="alter" CommandArgument='<%# Eval("ID") %>'><span class="icon-edit">修改</span></asp:LinkButton>
          <asp:LinkButton ID="LinkButton2" runat="server" class="button border-red" CommandName="del" CommandArgument='<%# Eval("ID") %>' OnClientClick="javascript:return confirm('真的要删除吗？');"><span class="icon-trash-o" >删除</span></asp:LinkButton>
      <%--<a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>--%>
      </div>
      </td>
    </tr>   
          </ItemTemplate>
      </asp:Repeater>
       
    
    

  </table>
</div>
<script>
function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
     
      <input type="hidden" name="id"  value="" />  
      <div class="form-group">
        <div class="label">
          <label>栏目名称：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="title" value="" data-validate="required:请输入标题" />--%>
            <asp:TextBox ID="txColumnName" runat="server" class="input w50" name="title" value="" data-validate="required:请输入标题"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label>栏目图片：</label>
        </div>
        <div class="field">
          <%--<input type="text" id="url1" name="banner" class="input tips" style="width:25%; float:left;"  value="" data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">--%>
            <asp:FileUpload ID="FileUpload1" runat="server" class="button bg-blue margin-left" />     
        </div>        
      </div>
       <div class="form-group">
        <div class="label">
          <label>英文标题：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="entitle" value="" />--%>   
            <asp:TextBox ID="txEnglishTitle" runat="server" class="input w50" ></asp:TextBox>               
          <div class="tips"></div>
        </div>
      </div>       
      <div class="form-group">
        <div class="label">
          <label>关键字标题：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input" name="s_title" value="" />--%>      
            <asp:TextBox ID="txkeyWorxTitle" runat="server" class="input" name="s_title"></asp:TextBox>    
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>栏目关键字：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input" name="s_keywords" value=""/> --%> 
            <asp:TextBox ID="txColumnKeyWord" runat="server" class="input" name="s_keywords"></asp:TextBox>       
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>关键字描述：</label>
        </div>
        <div class="field">
          <%--<textarea type="text" class="input" name="s_desc" style="height:100px;" ></textarea>  --%>
            <asp:TextBox ID="txKeyWord" runat="server" class="input" name="s_desc" style="height:100px;"></asp:TextBox>       
        </div>
     </div>
    
     <div class="form-group">
        <div class="label">
          <label>显示：</label>
        </div>
        <div class="field">
          <div class="button-group radio">
          
          <label class="button active">
         	  <span class="icon icon-check"></span>             
              <input name="isshow" value="1" type="radio" checked="checked">是             
          </label>             
        
          <label class="button active"><span class="icon icon-times"></span>          	
              <input name="isshow" value="0"  type="radio" checked="checked">否
          </label>         
           </div>       
        </div>
     </div>
      <div class="form-group">
        <div class="label">
          <label>排序：</label>
        </div>
        <div class="field">
          <%--<input type="text" class="input w50" name="sort" value="0"  data-validate="required:,number:排序必须为数字" />--%>
            <asp:TextBox ID="txSort" runat="server" class="input w50" name="sort" value="0"  data-validate="required:,number:排序必须为数字"></asp:TextBox>
          <div class="tips"></div>
        </div>
      </div>
     <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <%--<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>--%>
            <asp:Button ID="Button1" runat="server" Text="提交"  class="button bg-main icon-check-square-o" OnClick="Button1_Click"/>
        </div>
      </div>
    
  </div>
</div>
    </form>
</body>
</html>
