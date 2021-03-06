<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
	span.guide {display:none;font-size: 12px;position:absolute; top:12px; right:10px;}
	span.ok{color:green;}
	span.error{color:red;}
</style>
<!-- breadcrumb area -->
        
        
        <div class="shortcode-login-regi-area pt-113 pb-120 black-bg-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-xl-7 col-md-12 col-12 ml-auto mr-auto">
                        <div>
                            <div class="login-regi-wrapper">
                                <div class="text-center login-register-tab-list nav">
                                    <a class="active" data-toggle="tab" href="#login">
                                        <h4> Log In </h4>
                                    </a>
                                    <a data-toggle="tab" href="#register">
                                        <h4> register </h4>
                                    </a>
                                </div>
                                <div class="tab-content login-regi-content">
                                    <div id="login" class="tab-pane active">
                                        <div class="login-register-form">
                                
                                            <form action="${pageContext.request.contextPath }/member/loginMember.do" method="post">
                                                <input type="text" name="memberEmail" placeholder="ID">
                                                <input type="password" name="password" placeholder="Password">
                                                <div class="submit-btn">
                                                    <button class="btn-hover" type="submit">Log In</button>
                                                </div>
                                            </form>
                                          
                                            <div class="login-social-wrap">
                                                <p>Or Log In With</p>
                                                <div class="login-social-btn">
                                                <a href="${url}">
													<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/>
													</a>



                                                    <a  href="https://kauth.kakao.com/oauth/authorize?client_id=689a10f950365c8db96a54fb2dde9b36&redirect_uri=http://localhost:9090/cc/kakaologin&response_type=code">
            										<img src="${pageContext.request.contextPath}/resources/img/kakao/kakao_account_login_btn_medium_narrow.png"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="register" class="tab-pane">
                                        <div class="login-register-form">
                                            <form action="${pageContext.request.contextPath }/member/enrollMember.do" method="post" onsubmit="return enrollValidate();">
	                                            <div class="form-group row">
													<label for="memberEmail" class="col-sm-2 col-form-label">이메일</label>
													<div class="col-sm-10">
													    <input type="email" class="form-control-plaintext" id="memberEmail" name="memberEmail" placeholder="email@example.com">
													    <span class="guide ok">이 아이디는 사용가능합니다.</span>
														<span class="guide error">이 아이디는 사용중입니다.</span>
														<input type="hidden" id="idValid" value="0" />
													</div>
												</div>
												<div class="form-group row">
												    <label for="memberPassword" class="col-sm-2 col-form-label">비밀번호</label>
												    <div class="col-sm-10">
												        <input type="password" class="form-control" id="memberPassword" name="memberPassword">
												    </div>
												</div>
												<div class="form-group row">
												    <label for="memberPasswordCheck" class="col-sm-2 col-form-label">비밀번호확인</label>
													<div class="col-sm-10">
												        <input type="password" class="form-control" id="memberPasswordCheck" name="memberPasswordCheck">
												    </div>
												</div>
		                                        <div class="form-group row">
												    <label for="memberName" class="col-sm-2 col-form-label">이름</label>
												    <div class="col-sm-10">
											    		<input type="text" class="form-control-plaintext" id="memberName" name="memberName" placeholder="이름">
											    	</div>
												</div>
												
												<div class="form-group row">
												    <label for="memberPhone" class="col-sm-2 col-form-label">연락처</label>
												    <div class="col-sm-10">
											    		<input type="tel" class="form-control-plaintext" id="memberPhone" name="memberPhone" placeholder="숫자만 입력해주세요" maxlength="11">
											    	</div>
												</div>
												<div class="form-group row" style="margin-bottom: 0px;">
												    <label for="memberPostCode" class="col-sm-2 col-form-label">주소</label>
												    <div class="col-sm-7">
											    		<input type="text" class="form-control-plaintext" id="memberPostcode" name="memberPostcode" placeholder="우편번호">
											    	</div>
											    	<div class="col-sm-3">
												    	<button type="button" class="btn btn-info btn-lg" style="height:45px;" onclick="findAddress()">주소검색</button>
												    </div>
												</div>
												<div class="form-group row" style="margin-bottom: 0px;">
												    <div class="offset-sm-2 col-sm-10">
											    		<input type="text" class="form-control-plaintext" id="memberAddress" name="memberAddress" placeholder="주소">
											    	</div>
											   	</div>
												<div class="form-group row" style="margin-bottom: 0px;">
												    <div class="offset-sm-2 col-sm-10">
											    		<input type="text" class="form-control-plaintext" id="memberDetailAddress" name="memberDetailAddress" placeholder="상세주소">
											    	</div>
												</div>
		                                        <div class="form-group row">
												    <label for="memberBirthday" class="col-sm-2 col-form-label">생년월일</label>
												    <div class="col-sm-10">
											    		<input type="date" class="form-control" id="memberBirthday" name="memberBirthday" value="2011-08-19">
											    	</div>
												</div>
												<div class="form-group row">
												    <label for="memberGender" class="col-sm-2 col-form-label">성별</label>
												    <div class="col-sm-10">
													    <label class="custom-control custom-radio">
															<input id="male" name="memberGender" type="radio" class="custom-control-input" value="M">
															<span class="custom-control-indicator"></span>
															<span class="custom-control-description">남</span>
														</label>
														<label class="custom-control custom-radio">
															<input id="female" name="memberGender" type="radio" class="custom-control-input" value="F">
															<span class="custom-control-indicator"></span>
															<span class="custom-control-description">여</span>
														</label>
											    	</div>
												</div>
                   	                            <div class="submit-btn">
                                                    <button class="btn-hover" type="submit">Register</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function findAddress() {
    	new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("memberPostcode").value = data.zonecode;
                document.getElementById("memberAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("memberDetailAddress").focus();
            }
        }).open();
    }
    
    
    //회원가입 비밀번호/아이디 검사
	$(function(){
		
		$("#memberPasswordCheck").blur(function(){
			var p1=$("#memberPassword").val(), p2=$("#memberPasswordCheck").val();
			if(p1!=p2){
				alert("패스워드가 일치하지 않습니다.");
				$("#memberPassword").focus();
			}
		});
		
		$("#memberEmail").keyup(function(){
			var memberEmail = $(this).val().trim();
			
			if(memberEmail.length < 6){
				//아이디 재작성하는 경우 포함
				$(".guide").hide();
				$("#idValid").val(0);
				return;
			}
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/checkIdDuplicate.do",
				data: {memberEmail: memberEmail},
				dataType: "json",
				success: data => {
					console.log(data);
					
					if(data.isUsable == true){
						$(".guide.error").hide();
						$(".guide.ok").show();
						$("#idValid").val(1);
					}
					else{
						$(".guide.error").show();
						$(".guide.ok").hide();
						$("#idValid").val(0);
					}
				},
				error: (jqxhr, textStatus, errorThrown) =>{
					console.log("ajax요청실패!",jqxhr, textStatus, errorThrown)
				}
				
				
			});
			
		})
		
		
	});
	
		function enrollValidate(){
			var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
			var memberEmail = document.getElementById("memberEmail");
			
			console.log(emailRegExp.test(memberEmail.value));
			
			if(!emailRegExp.test(memberEmail.value)){
				alert("아이디가 올바르지 않습니다..");
				return false;
			}
			
			//아이디 중복검사 여부
			if($("#idValid").val() ==0){
				alert("아이디 중복검사 해주세요.");
				return false;
			}
			
			return true;
		}

</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
