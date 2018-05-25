<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="easyui-datagrid" id="itemList" title="Item List" 
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/item/list',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'id',width:60">Item ID</th>
            <th data-options="field:'title',width:200">Item title</th>
            <th data-options="field:'cid',width:100">Item Category</th>
            <th data-options="field:'sellPoint',width:100">Item Highlights</th>
            <th data-options="field:'price',width:70,align:'right',formatter:E3.formatPrice">Price</th>
            <th data-options="field:'num',width:70,align:'right'">Stock</th>
            <th data-options="field:'barcode',width:100">Bar Code</th>
            <th data-options="field:'status',width:60,align:'center',formatter:E3.formatItemStatus">Status</th>
            <th data-options="field:'created',width:130,align:'center',formatter:E3.formatDateTime">Create Date</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:E3.formatDateTime">Last Modified Date</th>
        </tr>
    </thead>
</table>
<div id="itemEditWindow" class="easyui-window" title="Edit item" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/item-edit'" style="width:80%;height:80%;padding:10px;">
</div>
<script>

    function getSelectionsIds(){
    	var itemList = $("#itemList");
    	var sels = itemList.datagrid("getSelections");
    	var ids = [];
    	for(var i in sels){
    		ids.push(sels[i].id);
    	}
    	ids = ids.join(",");
    	return ids;
    }
    
    var toolbar = [{
        text:'Add',
        iconCls:'icon-add',
        handler:function(){
        	$(".tree-title:contains('Add items')").parent().click();
        }
    },{
        text:'Edit',
        iconCls:'icon-edit',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('Info','Must chose an item to edit!');
        		return ;
        	}
        	if(ids.indexOf(',') > 0){
        		$.messager.alert('Info','Please chose only one item at a time!');
        		return ;
        	}
        	
        	$("#itemEditWindow").window({
        		onLoad :function(){
        			//回显数据
        			var data = $("#itemList").datagrid("getSelections")[0];
        			data.priceView = E3.formatPrice(data.price);
        			$("#itemeEditForm").form("load",data);
        			
        			// 加载商品描述
        			$.getJSON('/item/desc/'+data.id,function(_data){
        				if(_data.status == 200){
        					//UM.getEditor('itemeEditDescEditor').setContent(_data.data.itemDesc, false);
        					itemEditEditor.html(_data.data.itemDesc);
        				}
        			});
        			
        			//加载商品规格
/*         			$.getJSON('/rest/item/param/item/query/'+data.id,function(_data){
        				if(_data && _data.status == 200 && _data.data && _data.data.paramData){
        					$("#itemeEditForm .params").show();
        					$("#itemeEditForm [name=itemParams]").val(_data.data.paramData);
        					$("#itemeEditForm [name=itemParamId]").val(_data.data.id);
        					
        					//回显商品规格
        					 var paramData = JSON.parse(_data.data.paramData);
        					
        					 var html = "<ul>";
        					 for(var i in paramData){
        						 var pd = paramData[i];
        						 html+="<li><table>";
        						 html+="<tr><td colspan=\"2\" class=\"group\">"+pd.group+"</td></tr>";
        						 
        						 for(var j in pd.params){
        							 var ps = pd.params[j];
        							 html+="<tr><td class=\"param\"><span>"+ps.k+"</span>: </td><td><input autocomplete=\"off\" type=\"text\" value='"+ps.v+"'/></td></tr>";
        						 }
        						 
        						 html+="</li></table>";
        					 }
        					 html+= "</ul>";
        					 $("#itemeEditForm .params td").eq(1).html(html);
        				}
        			}); */
        			
        			E3.init({
        				"pics" : data.image,
        				"cid" : data.cid,
        				fun:function(node){
        					E3.changeItemParam(node, "itemeEditForm");
        				}
        			});
        		}
        	}).window("open");
        }
    },{
        text:'Delete',
        iconCls:'icon-cancel',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('Info','Must chose at least one item to delete!');
        		return ;
        	}
        	$.messager.confirm('Confirmation','Are you sure to delete item(s) ID(s):'+ids+'？',function(r){
        	    if (r){
        	    	var params = {"ids":ids};
                	$.post("/item/delete",params, function(data){
            			if(data.status == 200){
            				$.messager.alert('Info','Successfully deleted!',undefined,function(){
            					$("#itemList").datagrid("reload");
            				});
            			}
            		});
        	    }
        	});
        }
    },'-',{
        text:'Offshelf',
        iconCls:'icon-remove',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		offshelf
        		return ;
        	}
        	$.messager.confirm('Confirmation','Are you sure to offshelf item(s) ID(s):'+ids+'？',function(r){
        	    if (r){
        	    	var params = {"ids":ids};
                	$.post("/item/instock",params, function(data){
            			if(data.status == 200){
            				$.messager.alert('Info','Successfully offshelied!',undefined,function(){
            					$("#itemList").datagrid("reload");
            				});
            			}
            		});
        	    }
        	});
        }
    },{
        text:'Onshelf',
        iconCls:'icon-remove',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('Info','Must chose at least one item to onshelf!');
        		return ;
        	}
        	$.messager.confirm('Confirmation','Are you sure to onshelf item(s) ID(s):'+ids+'？',function(r){
        	    if (r){
        	    	var params = {"ids":ids};
                	$.post("/item/reshelf",params, function(data){
            			if(data.status == 200){
            				$.messager.alert('Info','Successfully onshelied!',undefined,function(){
            					$("#itemList").datagrid("reload");
            				});
            			}
            		});
        	    }
        	});
        }
    }];
</script>