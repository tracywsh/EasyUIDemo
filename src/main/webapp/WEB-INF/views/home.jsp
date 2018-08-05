<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="plugins/easyui/themes/default/easyui.css" />
	<link rel="stylesheet" href="plugins/easyui/themes/icon.css" />
	<link rel="stylesheet" href="plugins/easyui/demo.css" />
	<script type="text/javascript" src="plugins/jquery.min.js"></script>
	<script type="text/javascript" src="plugins/easyui/jquery.easyui.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h2>Footer Rows in DataGrid</h2>
	<p>The summary informations can be displayed in footer rows.</p>
	<div style="margin:20px 0;"></div>
	<table class="easyui-datagrid" title="Footer Rows in DataGrid" style="width:700px;height:220px"
			data-options="
				url: 'datagrid_data2.json',
				method: 'get',
				fitColumns: true,
				singleSelect: true,
				rownumbers: true,
				showFooter: true
			">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">Item ID</th>
				<th data-options="field:'productid',width:120">Product ID</th>
				<th data-options="field:'listprice',width:80,align:'right'">List Price</th>
				<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
				<th data-options="field:'attr1',width:250">Attribute</th>
				<th data-options="field:'status',width:60,align:'center'">Status</th>
			</tr>
		</thead>
	</table>
 
</body>
</html>