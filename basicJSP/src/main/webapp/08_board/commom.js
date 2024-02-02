function url(){
	
}
function home(){
	location.href = "02_main.jsp";
}
// 회원 삭제 
function memberDelete(member){
	alert(`${member}회원을 삭제했습니다.`);
	location.href = "01_12_adminUserList.jsp"
}
//로그인 체크 실패 또는 성공
function valueCheck(msg,url){
	alert(msg);
	location.href = url;
}

function valueDelect(idx){
	location.href = `_06_deleteBoardPro.jsp?index=${idx}`;
}
function valueUpdate(idx){
	location.href = `_05_updateBoardPro.jsp?index=${idx}`;
}