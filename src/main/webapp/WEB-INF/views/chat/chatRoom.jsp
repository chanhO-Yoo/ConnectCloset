<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chatRoom</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script>

let host = location.host;
let ws = new WebSocket('ws://'+host+'<%=request.getContextPath()%>/chat/helloWebSocket');

//이벤트핸드러 mapping
ws.onopen = e =>{
	console.log("websocket open");
}

ws.onmessage= e =>{
	console.log("websocket message : "+e.data);
	let o = JSON.parse(e.data);
	
	
	if(o.type=='dm') {
		alert(o.sender+" : " + o.msg);
	}
	//일반 메세지
	else{
		let msg = '<li class="list-group-item">';
		msg += '<span class="badge badge-success">'+o.sender+'</span>';
		msg += "&nbsp;&nbsp;"+o.msg+'</li>';
		
		$("#msg-container ul").append(msg);
		
		//스크롤처리
		//scrollHeight: 실제 뷰포트에 보이지 않는 전체 높이
		//scrollTop : 요소의 맨윗부분과 뷰포트에 보이는 부분의 값을 set/get,
		let $msgContainer = $("#msg-container");
		$msgContainer.scrollTop($msgContainer.prop('scrollHeight'));
		
	}
	
	
}

ws.onerror= e =>{
	console.log("websocket error : "+ e);
}

ws.onclose= e =>{
	console.log("websocket close");
}

$(()=>{
	console.log("jquery로딩 완료!");
	//전송(send)버튼 클릭한 경우
	$("#btn-send").click(function(){
		let msg = $("#msg").val().trim();
		if(msg.length==0) return;
		
		let o = {
				type: "message",
				msg: msg,
				sender: "<%=request.getParameter("userId")%>",
				time: Date.now()
		}
		
		let s = JSON.stringify(o);
		
		//전송
		ws.send(s);
		
		//초기화
		$("#msg").val('').focus();
	});
	
	$("#msg").keyup(e=>{
		if(e.key=='Enter')
			$("#btn-send").trigger('click');
	});
	
	$("#dm-client").focus(e=>{
		let $dmClient = $(e.target);
		
		//현재 접속자 정보 조회 json
		$.ajax({
			url: "<%=request.getContextPath()%>/chat/userList",
			success: data =>{
				$dmClient.html("<option value='' disabled>접속자 목록</option>");
				for(let i in data)
					$dmClient.append("<option value='"+data[i]+"'>"+data[i]+"</option>");
			},
			error: (x,s,e)=>{
				console.log(x,s,e);
			}
			
		});	
	}); //dm-client
	
	$("#btn-dm-send").click(e=>{
		let dmMsg = $("#dm-msg").val().trim();
		let receiver = $("#dm-client option:selected").val();
		
		if(dmMsg.length==0||reciever=="") return;
		
		var dm = {
				type: "dm",
				msg: dmMsg,
				sender: "<%=request.getParameter("userId")%>",
				reciever: receiver,
				time: Data.now()
		}
		
		$.ajax({
			url: "<%=request.getContextPath()%>/chat/sendDM",
			data: {dm: JSON.stringify(dm)},
			success: data=>{
				console.log(data);
				$("#dm-msg").val('').focus();
			},
			erro:(x,s,e)=>{
				console.log(x,s,e);
			}
		})
		
		
	}); //btn-dm-send
	
});

</script>
<style>
#chat-container{
	width: 600px;
	margin: 0 auto;
	padding: 10px;
}
#msg-container{
	height: 600px;
	overflow-y: scroll;
}

</style>
</head>
<body>
	<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Hello Chat</h1>
    <p class="lead">Connect Closet's live chat space. Please use correct words</p>
    
    <section id="chat-container">
    	<div id="msg-container">
    		<ul class="list-group list-group-flush">
			  
			</ul>
    	</div>
    	<div class="input-group mb-3">
		  <input type="text" class="form-control" id="msg" placeholder="내용을 입력하세요" aria-label="내용을 입력하세요" aria-describedby="btn-send">
			 <div class="input-group-append">
		    	<span class="input-group-text" id="btn-send">send</span>
		  	</div>
		</div>
		
		<hr style="margin:30px 0;"/>
		<!-- dm관련 시작 -->
		
		<div id="dm-container" class="input-group mb-3">
		  <div class="input-group-prepend">
		    <label class="input-group-text" for="dm-client">DM</label>
		  </div>
		  <select class="custom-select" id="dm-client">
		    
		  </select>
		</div>
		
		<div class="input-group mb-3">
		  <input type="text" class="form-control" id="dm-msg" placeholder="DM내용을 입력하세요" aria-label="DM내용을 입력하세요" aria-describedby="btn-send">
			 <div class="input-group-append">
		    	<span class="input-group-text" id="btn-dm-send">send</span>
		  	</div>
		</div>
		
    </section>
  </div>
</div>
</body>
</html>