var zTree;
var setting = {
		check: {
			enable: true
		},
		data: {
			simpleData: {
				enable: true
			}
		}
};
var zNodes =[
	{ id:1, pId:0, name:"随意勾选 1", open:true},
	{ id:11, pId:1, name:"随意勾选 1-1", open:true},
	{ id:111, pId:11, name:"随意勾选 1-1-1"},
	{ id:112, pId:11, name:"随意勾选 1-1-2"},
	{ id:12, pId:1, name:"随意勾选 1-2", open:true},
	{ id:121, pId:12, name:"随意勾选 1-2-1"},
	{ id:122, pId:12, name:"随意勾选 1-2-2"},
	{ id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
	{ id:21, pId:2, name:"随意勾选 2-1"},
	{ id:22, pId:2, name:"随意勾选 2-2", open:true},
	{ id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
	{ id:222, pId:22, name:"随意勾选 2-2-2"},
	{ id:23, pId:2, name:"随意勾选 2-3"}
];
var code;

function setCheck() {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	py = $("#py").attr("checked")? "p":"",
	sy = $("#sy").attr("checked")? "s":"",
	pn = $("#pn").attr("checked")? "p":"",
	sn = $("#sn").attr("checked")? "s":"",
	type = { "Y":py + sy, "N":pn + sn};
	zTree.setting.check.chkboxType = type;
	showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
}
function showCode(str) {
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}

$(document).ready(function(){
	var url=basePath+"permission/getJson1";
	var params={
			roleId:roleId,
			parentId:parentId
			};
	$.post(url,params,function(res){
		var data=eval("("+res+")");
		zNodes=data;
		$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		setCheck();
		$("#py").bind("change", setCheck);
		$("#sy").bind("change", setCheck);
		$("#pn").bind("change", setCheck);
		$("#sn").bind("change", setCheck);
		//zTree.selectNode(zTree.getNodeByParam("id", 1));
	})
});

function addpermission(){
	var id=$("#id").val();
	var pid=$("#pid").val();
	var nodeIds="";
	$(".checkbox_true_part").each(function() {
		var node=$(this).attr('node');
		if(nodeIds==''){
			nodeIds+=node;
		}else{
			nodeIds+=","+node;
		}
    });
	$(".checkbox_true_full").each(function() {
		var node=$(this).attr('node');
		if(nodeIds==''){
			nodeIds+=node;
		}else{
			nodeIds+=","+node;
		}
    });
	var url=basePath+"role/addpermission";
	var params={
			id:id,
			pid:pid,
			nodeIds:nodeIds
			};
	$.post(url,params,function(res){
		alert("添加权限成功");
	})
}