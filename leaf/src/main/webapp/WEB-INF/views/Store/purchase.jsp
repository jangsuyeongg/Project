<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
.main {
	max-width: 1400px;
	margin: 0 auto;
	overflow: auto;
	height: 1500px;
}

.search {
	width: 400px;
	float: left;
	margin-left: 10px;
	margin-right: 10px;
	overflow: auto;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 3px;
	height: 910px;
	cursor: pointer;
}

.partner {
	margin-right: 10px;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 3px;
	display: flex;
	padding: 20px;
}

.purchase {
	width: 1061px;
	display: flex;
	margin: 10px;
	flex-direction: column;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 3px;
}

.store {
	width: 310px;
	display: flex;
	margin: 10px;
	margin-left: 0;
	flex-direction: column;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 3px;
	padding: 14px;
}

.purchase_ok {
	width: 970px;
	height: 350px;
	display: flex;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 3px;
	overflow: auto;
}

.text {
	width: 100px;
}

table, td {
	padding-top: 0px;
	padding-bottom: 0px;
	height: 0px;
}

.table td, .table th {
	padding: .25rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
	text-align: center;
	
}

.name, #name2 {
	font-size: 1.2em;
	font-weight: bold;
	margin: 10px;
}

.name {
	float: left;
	color: rgb(30, 57, 50);
	text-align: center;
}

#name2 {
	margin-left: 424px;
}
.manename{
	font-size:2em;
	color: rgb(30, 57, 50);
	font-weight: bold;
	margin-top: 20px;
}

#pc_cnt {
	width: 100px;
	display: inline-block;
	height: 30px;
}

#delBtn {
	line-height: 33px;
	text-align: center; background-color : lightblue; width : 110px; height :35px; border-radius : 2px;
	left: 40px;
	border: 1px solid rgb(0, 163, 239);
	font-size: 0.9em;
	transition: 0.4s;
	padding-left: 0px;
	position: relative;
	display: flex;
	justify-content: space-evenly;
	top: 10px;
    margin-left: 820px;
}

#submit>input {
	font-size: 0.9rem
}


#delBtn:hover, .btn3:hover {
	cursor: pointer;
	box-shadow: inset 30em 0 0 0 rgb(0, 163, 239);
	color: white;
	border-color: rgb(0, 163, 239);
}

.btn3 {
	line-height: 33px;
    text-align: center;
    background-color: lightblue;
    width: 110px;
    height: 35px;
    border-radius: 2px;
    left: 150px;
    border: 1px solid rgb(0, 163, 239);
    font-size: 0.9em;
    transition: 0.4s;
    padding-left: 0px;
    position: relative;
    display: flex;
    justify-content: space-evenly;
}

}
.product {
	cursor: pointer;
}
/*head ?????????*/
header {
	height: 250px;
	position: relative;
}

#headerText {
	top: -100px;
	font-size: 3em;
	color: white;
	opacity: 0.5;
	text-align: center;
	position: relative;
}

nav {
	display: flex;
	justify-content: center;
	width: 100%;
	border-bottom: 1px solid gray;
}

nav>div {
	padding: 15px 40px;
}

#head_img {
	background-image:
		url(https://www.baristapaulbassett.co.kr/images/whatsnew/eventSubVisual.jpg);
	z-index: -1;
	width: 100%;
	height: 250px;
}

.items {
	display: flex;
	justify-content: space-evenly;
	line-height: 2;
	margin: 8px;
}

input {
	border: none;
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	border-bottom: 1px solid;
	outline: none;
}

.searchPartner {
	width: 420px;
}

.form {
	display: flow-root;
}

#span {
	font-size: 0.6em;
	margin: 3px;
}

.fa-envira {
	color: rgb(30, 57, 50);
}

.textarea {width =200px;height =70px;
	border: 2px solid;
	font-weight: bold;
	font-size: 0.8em;
	margin: 10px;
	padding: 10px;
	margin-bottom: 30px;
	resize: none;
	top: -20px;
	position: relative;
	left: 70px;
}

td{
	font-size:0.9rem;
}

.franchise {
	line-height: 2;
}
.franchise>ul{
	display:flex;
	justify-content: flex-start;
	margin-left:10px;
}
.franchise li:nth-of-type(1){
	width:130px;
}

.NoProductList{
	position: relative;
    top: 100px;
}
.partner2>ul{
	display:flex;
	width:300px;
}
.partner2{
	margin-left:100px;
}
.partner2 li:nth-of-type(1){
	width:100px;
}
</style>
<script>
var fc_num = ${registerList.fc_num }

$(document).ready(function() {

    $('.form').submit(function() {
    	
        console.log(document.getElementById('status').innerText);
        if(document.getElementById('status').innerText == "??????"){
        	alert('??????????????????');
            return true;
        }
        alert('??????????????????');
        return false;
        });
});

</script>
<script>
var hq_num=0;
$(()=>{
	$('#myinput').keyup(function(){
		var data = $(this).val().toLowerCase();
		
		$('#searchList>tr').filter(function(){
			var trData = $(this).text().toLowerCase(); //tr??? ?????? ????????? ?????????.
			var idx = trData.indexOf(data);// ????????? -1, ????????? 0~??????
			//				true:?????????, false:??????
			$(this).toggle(idx>-1);
		});
	});

	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
	
	
});

//???????????? List????????? ?????? ?????????????????? ???????????? ajax (????????????->???????????????, ??????)
$(()=>{
	
	    $(".product").on('click',function(){
	      var url = "/myapp/purchasePartner";
	      var hq_num = $(this).children(".first").text();
	      var params = {"hq_num": hq_num};
	      $.ajax({
	         url:url,
	         data:params,
	         success:function(r){
	        	 var rr = $(r)
	        	 var tag = "";
	            rr.each(function(idx,vo){
	            	   $("#view7").html(vo.hq_num );
	  		           $("#view8").html(vo.hq_name);
	  		           $("#view9").html(vo.ware_price + 2000);
	  	               $("#view1").html(vo.part_company);
	  	               $("#view2").html(vo.part_code_name);
	  	               $("#view4").html(vo.part_name);
	  	               $("#view5").html(vo.part_tel);
	  	               $("#view6").html(vo.part_email);
	  	               
	  	               tag = "<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>";
	  	               tag += "<div>" + vo.hq_num + "</div>";
	  	               tag += "<div>" + vo.hq_name + "</div>";
	  	               tag += "<div>" + (vo.ware_price + 2000) + "???</div>";
	  	               tag += "<input type='text' name='pc_cnt' id='pc_cnt' required/>???";
	  	               tag += "<div><input id='hq_num' name='hq_num' value='"+ vo.hq_num  +"' type='hidden' /></div>";
	  	             tag += "<div><input id='hq_num' name='fc_num' value='"+ fc_num  +"' type='hidden' /></div>";
		  	           
	  	               tag += "<div><input type='submit' class='btn3' value='??????' /></div></form>";
	  	               $("#purchase").html(tag);
	  	            });    		           
	         }
	      }); // ajax
	   });// ??????
	});	
	
</script>

</head>
<body>
<header>
	<div id="head_img"></div>
   <div id="headerText">PURCHASE</div>
</header>
<div class="main">
<div class="manename">????????????</div>
<hr/>
<div style="display:flex";>
<div class="purchase">
<div class="name">??? ??? ???<hr/></div>

   	   	<div class="items">
   	   	<div>
   	   		<div><b><i class="fab fa-envira"></i> ???????????? </b></div>
   	   		<div><b><i class="fab fa-envira"></i> ??? ??? ??? </b></div>
   	   		<div><b><i class="fab fa-envira"></i> ???????????? </b></div>
   	   		<div><b><i class="fab fa-envira"></i> ???????????? </b></div>
   	   	</div>
   	   	<div id="purchase">
   	   	<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>
	    <div>????????? ?????????</div>
	    <div>???????????????</div>
	    <div>&nbsp;&nbsp;&nbsp;-LEAF-</div>
		<div></div>		   
	    
	    
		   
	    <div><input type='submit' class='btn3' value='????????????' /></div></form>
   	   	</div>
   	   	<div class="textarea">
	    	??? ?????? ???????????? ????????? ?????? ??? ??? ???????????? ??? ???????????????.<br/> 
	    	??? ??????????????? ???????????? ????????? ???????????????.<br/>
	    	??? ??????????????? ??????????????? ????????? ???????????????.
	    </div>
   	   	</div>   	
	</div>
	 <div class="store">
		<div class='name'>??? ??? ???</div>
   	   	<div class='franchise'>	
			<hr/>
			<ul>
				<li><b>????????????</b></li>
				<li> ${registerList.fc_name }</li>
			</ul>
			<ul>
				<li><b>?????????</b></li>
				<li>${registerList.fc_boss }</li>
			</ul>
			<ul>
				<li><b>?????????</b></li>
				<li>${registerList.fc_tel }</li>
			</ul>
		</div> 
		</div>
		</div>	
	<div class="name">??????</div><div id="name2">??????</div>
				<hr/>
	<div class="search">
		<input type='text' id='myinput' placeholder='???????????? ????????? ???????????????.' class='form-control'/>
		<table class='table table-hover'>
			<thead>
			<tr class="table">
				<td>????????????</td>
				<td>?????????</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
				<c:forEach var="ProductVO" items="${ProductList}">
					<tr class="product">
						<td class="first">${ProductVO.hq_num}</td>
						<td>${ProductVO.hq_name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table class='table table-hover NoProductList'>
			<thead>
			<tr class="table">
				<td>????????????</td>
				<td>?????????</td>
				<td>??????</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
				<c:forEach var="ProductVO" items="${NoProductList}">
					<tr class="product">
						<td class="first">${ProductVO.hq_num}</td>
						<td>${ProductVO.hq_name}</td>
						<td style="color:red;">??????</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<div class="partner">
		<div class="partner2">
		<ul>
				<li></li>
				<li></li>
			</ul>	
			<ul>
				<li>??? ????????????</li>
				<li id="view7"></li>
			</ul>
			<ul>
				<li>??? ?????????</li>
				<li id="view8"></li>
			</ul>	
			<ul>
				<li>??? ????????????</li>
				<li id="view9"></li>
			</ul>
			<ul>
				<li></li>
				<li></li>
			</ul>			
		</div>
		<div class="partner2">
			<ul>
				<li>??? ?????????</li>
				<li id="view1"></li>
			</ul>
			<ul>
				<li>??? ?????????</li>
				<li id="view4"></li>
			</ul>
			<ul>
				<li>??? ?????????</li>
				<li id="view5"></li>
			</ul>		
		</div>
	</div>
	<form method="post" class="form" name="delsubmit" action="/myapp/purchaseDel">
	<div class="name">????????????</div>
		<input type="submit" id="delBtn" value="????????????">
		<div class="purchase_ok">
			 <table class="table table-hover">
			  
	      	<thead>
	            <tr class="table">
	            	<td>??????</td>
	            	<td>????????????</td>
	                <td>????????????</td>
	                <td>?????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	            </tr>
	            </thead>
	           
	            <tbody>
	            	<c:forEach var="ProductVO" items="${purchaseList}">
	            	<c:if test="${ProductVO.order_status == 1}">
		             <tr>
		             	<td><input type="checkbox" id="purchaseDel" name="purchaseDel" value="${ProductVO.pc_num }"/></td>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price + 2000}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${(ProductVO.ware_price + 2000)*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td id="status" name="status"><c:if test="${ProductVO.order_status == 1}">??????</c:if>
		               	    <c:if test="${ProductVO.order_status == 2}">??????</c:if>
		               	</td>
		            </tr>
		            </c:if>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
		<div class="name">????????????</div>
		<div class="purchase_ok">
			 <table class="table table-hover">
	      	<thead>
	            <tr class="table">
	            	<td>????????????</td>
	                <td>????????????</td>
	                <td>?????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	                <td>????????????</td>
	            </tr>
	            </thead>
	           
	            <tbody>
	            	<c:forEach var="ProductVO" items="${purchaseList}">
	            	<c:if test="${ProductVO.order_status == 2}">
		             <tr>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price + 2000}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${(ProductVO.ware_price + 2000)*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td><c:if test="${ProductVO.order_status == 1}">??????</c:if>
		               	    <c:if test="${ProductVO.order_status == 2}">??????</c:if>
		               	</td>
		            </tr>
		            </c:if>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
	</form>
</div>
<%@ include file="/inc/bottom.jspf" %>