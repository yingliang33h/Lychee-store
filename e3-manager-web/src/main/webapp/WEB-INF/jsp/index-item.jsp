<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	 <a class="easyui-linkbutton" onclick="importItems()">Import and index inventory items</a>
</div>
<script type="text/javascript">
	function importItems() {
		$.post("/index/item/import",null,function(data){
			if(data.status == 200){
				$.messager.alert('Info','Successfully imported and indexed inventory items.');
			} else {
				$.messager.alert('Error','Could not import and index inventory items.');
			}
		});
	}
</script>