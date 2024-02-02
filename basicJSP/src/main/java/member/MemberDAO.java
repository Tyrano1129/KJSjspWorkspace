package member;

import java.util.ArrayList;
import java.util.Arrays;

public class MemberDAO {
	private ArrayList<Member> List;
	
	public MemberDAO() {
		List = new ArrayList<Member>();
		 //샘플 회원 목록
		ArrayList<String> sampleId = new ArrayList<String>(Arrays.asList("qwer","abcd","hello"));
		ArrayList<String> samplePw = new ArrayList<String>(Arrays.asList("1111","2222","3333"));
		ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("이만수","박영희","이수민"));
		ArrayList<String> samlpleGender = new ArrayList<String>(Arrays.asList("남성","여성","여성"));
		
		// 샘플생성
		for(int i =0; i < sampleId.size(); i+=1) {
			Member member = new Member(sampleId.get(i),samplePw.get(i),sampleName.get(i),samlpleGender.get(i));
			List.add(member);
		}
	}
	// admin 삭제 메서드
	public void memberDelete(int idx) {
		List.remove(idx);
	}
	// 로그인 메서드
	public int memberLogin(String id, String pw) {
		for(int i =0; i < List.size(); i+=1) {
			if(List.get(i).getId().equals(id) && List.get(i).getPw().equals(pw)) {
				return i;
			}
		}
		return -1;
	}
	// 아이디 중복 인덱스 찾기
	private int memberIdCheck(String id) {
		for(int i = 0; i < List.size(); i+=1) {
			if(List.get(i).getId().equals(id)) {
				return i;
			}
		}
		return -1;
	}
	// 가입 및 아이디 중복체크
	public boolean memberJoin(String id,String pw,String name, String gender) {
		int idx = memberIdCheck(id);
		if(idx != -1) {
			return false;
		}
		Member member = new Member(id,pw,name,gender);
		List.add(member);
		return true;
	}
	
	//회원 정보 수정
	public boolean memberSet(int idx,String pw,String name,String gender) {
		if(!List.get(idx).getPw().equals(pw)) {
			return false;
		}
		List.get(idx).setName(name);
		List.get(idx).setGender(gender);
		return true;
	}
	//회원 탈퇴
	public boolean memberResign(int idx,String pw) {
		if(!List.get(idx).getPw().equals(pw)) {
			return false;
		}
		List.remove(idx);
		return true;
	}
	public ArrayList<Member> getList() {
		return List;
	}

	public void setList(ArrayList<Member> list) {
		List = list;
	}
}
	
	
	