<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>Home</title>
</head>
<body>
<h3>Ajax로 간단한 문자열 전송</h3>
<p>Ajax로 서버와 데이터를 주고 받을 경우</p>
<p>일반 Controller보다 RestController를</p>
<p>사용하는 것이 좀 더 편함.</p>
<p><input type="text" id="indata" placeholder="여기에 입력하세요."></p>
<p><button onclick="goAjax()">일반 전송</button></p>
<p><button onclick="goAjaxRest()">Rest 전송</button></p>
<p>일반 전송 결과 : <span id="outdata"></span></p>
<p>Rest 전송 결과 : <span id="outrest"></span></p>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function goAjax() {
	//전송할 데이터를 요소로부터 가져오기.
	var indata = $('#indata').val();
	console.log(indata);
	
	//js 객체 형태로 변경 <- js 가 아니라 json 형태였나봄 후팔..이거때문에 헤맸네. javascript 객체는 변수 이름에 double quote 안 씀. 
	var objdata = {"data":indata};
	console.log(objdata);
	
	//ajax를 사용하여 데이터 전송 및 결과 받기
	$.ajax({
		url: "dataproc",
		type: "get",
		data: objdata,
		success: function(data){
			console.log(data);
			$('#outdata').html(data);
		},
		error: function(error){
			console.log(error);
		}
	});
}
</script>
</html>






