$(function(){
	initUserTable();
});
/**
 * 初始化表格
 * @returns
 */
function initUserTable(){
	$('#userTable').datagrid({
		url: 'user/list',
		title: '用户列表',
		loadMsg: '正在加载信息...',
	    fitColumns : true,
	    striped : true,
	    rownumbers : true,
	    border : true,
	    singleSelect: true,
	    toolbar:$('#toolbar'),
	    columns : [[
	        {
	            field : 'firstName',
	            title : 'firstName',
	            width : 100
	        },
	        {
	            field : 'lastName',
	            title : 'lastName',
	            width : 100
	        },
	        {
	            field : 'phone',
	            title : 'phone',
	            width : 100
	        },
	        {
	            field : 'email',
	            title : 'email',
	            width : 100
	        }
	    ]],
	});
}

/**
 * 新建用户
 */
function newUser(){
	$('#userDlg').dialog('open').dialog('setTitle','New User');
	$('#userForm').form('clear');
}
/**
 * 编辑用户	
 */
function editUser(){
	var row = $('#userTable').datagrid('getSelected');
	if (row){
		$('#userForm').form('load',row);
		$('#userDlg').dialog('open').dialog('setTitle','Edit User');
	}
}
/**
 * 保存用户
 * @returns
 */
function saveUser(){
	
}
