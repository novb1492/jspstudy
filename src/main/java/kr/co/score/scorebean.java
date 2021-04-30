package kr.co.score;

public class scorebean {
private int kok;
private int math;
private int english;
private int total;
public int getTotal() {
	return total;
}

public void setTotal(int total) {
	this.total = total;
}
private double avg;

public scorebean(){}

public double getAvg() {
	return avg;
}
public void setAvg(double avg) {
	this.avg = avg;
}

public int getKok() {
	return kok;
}
public void setKok(int kok) {
	this.kok = kok;
}
public int getMath() {
	return math;
}
public void setMath(int math) {
	this.math = math;
}
public int getEnglish() {
	return english;
}
public void setEnglish(int english) {
	this.english = english;
}
}


