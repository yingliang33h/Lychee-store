<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	 <ul id="contentCategory" class="easyui-tree">
    </ul>
</div>
<div id="contentCategoryMenu" class="easyui-menu" style="width:120px;" data-options="onClick:menuHandler">
    <div data-options="iconCls:'icon-add',name:'add'">Add Category</div>
    <div data-options="iconCls:'icon-remove',name:'rename'">Rename</div>
    <div class="menu-sep"></div>
    <div data-options="iconCls:'icon-remove',name:'delete'">Delete</div>
</div>
<script type="text/javascript">
$(function(){
	$("#contentCategory").tree({
		url : '/content/category/list',
		animate: true,
		method : "GET",
		onContextMenu: function(e,node){
            e.preventDefault();
            $(this).tree('select',node.target);
            $('#contentCategoryMenu').menu('show',{
                left: e.pageX,
                top: e.pageY
            });
        },
        onAfterEdit : function(node){
        	var _tree = $(this);
        	$("#tabs").tabs("close", "Content"); 
        	if(node.id == 0){
        		// 新增节点
        		$.post("/content/category/create",{parentId:node.parentId,name:node.text},function(data){
        			if(data.status == 200){
        				_tree.tree("update",{
            				target : node.target,
            				id : data.data.id
            			});
        			}else{
        				$.messager.alert('Error','Failed to create '+node.text+'!');
        			}
        		});
        	}else{
        		$.post("/content/category/update",{id:node.id,name:node.text});
        	}
        }
	});
});
function menuHandler(item){
	var tree = $("#contentCategory");
	var node = tree.tree("getSelected");
	if(item.name === "add"){
		tree.tree('append', {
            parent: (node?node.target:null),
            data: [{
                text: 'New Category',
                id : 0,
                parentId : node.id
            }]
        }); 
		var _node = tree.tree('find',0);
		tree.tree("select",_node.target).tree('beginEdit',_node.target);
		$("#tabs").tabs("close", "Content"); 
	}else if(item.name === "rename"){
		tree.tree('beginEdit',node.target);
		$("#tabs").tabs("close", "Content");
	}else if(item.name === "delete"){
		$.messager.confirm('Info','Are you sure to delete the category of '+node.text+'？',function(r){
			if(r){
				$.post("/content/category/delete/",{id:node.id},function(){
					tree.tree("remove",node.target);
				});	
				$("#tabs").tabs("close", "Content");
			}
		});
	}
}
</script>