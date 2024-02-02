package gugudon;

import java.util.ArrayList;
import java.util.Random;

public class guguDanDAO {
	
	private int count;
	private int score;
	
	ArrayList<guguDanVO> quiz;
	
	public guguDanDAO(){
		quiz = new ArrayList<guguDanVO>();
		makeQuiz();
		count = 0;
	}
	
	private void makeQuiz() {
		Random rd = new Random();
		for(int i = 0; i < 5; i+=1) {
			guguDanVO vo = new guguDanVO(rd.nextInt(8)+2,rd.nextInt(9)+1);
			quiz.add(vo);
		}
	}
	
	public boolean checkAnswer(String input) {
		int answer = Integer.parseInt(input);
		
		guguDanVO vo = quiz.get(count);
		if(answer == vo.getNum1() * vo.getNum2()) {
			count +=1;
			score += 20;
			return true;
		}
		count +=1;
		return false;
	}
	
	public String getQuiz() {
		return quiz.get(count).toString();
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
}
