<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="plugins/easyui/themes/default/easyui.css" />
	<link rel="stylesheet" href="plugins/easyui/themes/icon.css" />
	<link rel="stylesheet" href="plugins/easyui/demo.css" />
	<script type="text/javascript" src="plugins/jquery.min.js"></script>
	<script type="text/javascript" src="plugins/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/user.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>User</title>
</head>
<body>
	<!-- 表格 -->
	<table id="userTable"/>
	<!-- 表格工具框 -->
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
	</div>
	<!-- 编辑框 -->
	<div id="userDlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
		closed="true" buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<form id="userForm" method="post">
			<div class="fitem">
				<label>First Name:</label>
				<input name="firstName" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Last Name:</label>
				<input name="lastName" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Phone:</label>
				<input name="phone">
			</div>
			<div class="fitem">
				<label>Email:</label>
				<input name="email" class="easyui-validatebox" validType="email">
			</div>
		</form>
	</div>
    <!-- 对话框按钮 -->
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#userDlg').dialog('close')">Cancel</a>
	</div>
</body>
</html>