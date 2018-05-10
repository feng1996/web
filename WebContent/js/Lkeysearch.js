	//获得更多关联信息的函数
	function getMore(){
	 var xmlHttp;
	 //首先获得用户的输入
	 var content = document.getElementById("keyword");
	 if(content.value==""){
	  keywordBlur();//执行一下清空方法，使搜索框在无数据的时候，下方残留数据也动态清空
	  return;
	 }
	 //alert(content.value);
	 //要给服务器发送用户输入的内容，要创建对象,叫XmlHttp对象
	 //xmlHttp=获得XmlHttp对象
	 xmlHttp=CreatXMLHttp();
	 //alert(xmlHttp);
	 //要给服务器发送数据
	 var url="LinkKeySearch?keyword="+encodeURI(encodeURI(content.value));
	 //如果不用escape这个函数转化一下的话，传中文会有问题
	 //true表示javascript的脚本会在send()方法之后继续执行，而不会等待来自服务器的相应
	 xmlHttp.open("GET",url,true);
	 //xmlHttp绑定一个回调方法去接受服务器传来的相应,会在xmlHttp状态改变的时候被调用
	 //xmlHttp有0~4的状态，只关心4的方法
	 //4为complete状态，表示交互完成，当交互完成时才会调用回调方法
	 xmlHttp.onreadystatechange=callback;
	 xmlHttp.send(null);//send里面发送的是内容体，但参数在URL里已经都写完了
	 //回调函数==!!注意 这里回调方法要在方法内创建，因为创建的xmlHttp对象不是全局变量
	 //是在getMore()方法里创建的，可以将变量提取出来，变成全局变量
	 function callback(){
	  if (xmlHttp.readyState==4){
	   //200代表服务器相应成功。。。404代表资源未找到。。500服务器内部错误
	   if(xmlHttp.status==200){
	    //交互成功，获得相应的数据，是文本格式
	    var result=xmlHttp.responseText;
	    //解析json格式
	    var json=eval("("+result+")");//要在两边加个小括号，js才能认识
	    //获得数据之后就可以开始展示了。在输入框的下边展示
	    setContent(json);
	   }
	  }
	 }
	 //设置关联数据展示,参数代表的是服务器传递过来的关联数据
	 function setContent(contents){
	  //setLocation();//设置跟输入框一样宽度
	  keywordBlur();//在每次得到值之前先清空一下之前的残留数据
	  var size=contents.length;//根据关联的数据长度，来生成多少<tr>
	  //设置内容
	  for(var i=0;i<size;i++){
	   //不用appendChild()方法是因为不同浏览器可能不兼容该方法
	   var nextNode=contents[i];//代表json格式的第i个元素 
	   var newRow=content_table_body.insertRow();//创建行
	   var newCell=newRow.insertCell();//创建单元格
	   newCell.innerHTML=contents[i];//将数据赋值给单元格
	   newCell.onmouseover = function(){
	     
	       //鼠标滑过的时候，输入框中就显示哪个值
	       if(newCell.innerHTML!=null)
	           document.getElementById("keyword").value = this.innerHTML;
	   };

	   /**
	    * 此处绑定一个onclick方法，当点击到这个td的时候，
	    * 输入框中就会显示这个数据
	    */
	    newCell.onmousedown = function(){
	       document.getElementById("keyword").value = this.innerHTML;
	   };
	  } 
	 }
	}
	//获得XmlHttp对象
	function CreatXMLHttp(){
	 //要考虑不同浏览器的写法
	 //大多数浏览器使用
	 var xmlHttpReq;
	 if(window.XMLHttpRequest){//火狐
	  xmlHttpReq=new XMLHttpRequest();
	 }else{
	  /* if(window.ActiveXObject){
	   xmlHttpReq=neww ActiveXObject("Microsoft.XMLHTTP");
	   //例如ie有很多版本，不一定能创建出来这个对象，所以要添加以下一个判断
	   //换一种方法，保证创建
	   if(!xmlHttp){
	    xmlHttpReq=new ActiveObject("Msxml2.XMLHTTP");
	   }
	  } */
	  //一定要如下格式写 上述格式火狐IE亲测不好使
	   try { //IE
	    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
	   }
	   catch (e) {
	    try {//IE 浏览器
	     xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
	    }
	    catch (e) {
	    }
	   }
	 }
	 return xmlHttpReq;
	}
	//失去焦点的时候
	function keywordBlur(){
	 //要获得body的元素长度，才能知道要遍历多少次
	  var contentTableBody=document.getElementById("content_table_body"); 
	  var size=contentTableBody.childNodes.length; 
	   //因为是删除子节点，所以是从后往前才能删，同二叉树，删除子节点
	  for(var i=size-1;i>=0;i--){ 
	   contentTableBody.removeChild(contentTableBody.childNodes[i]); 
	  } 
	  document.getElementById("popDiv").style.border="solid 1px #ccc"; 
	  document.getElementById("popDiv").style.borderTop="none";
	  document.getElementById("popDiv").style.background="white";
	}
