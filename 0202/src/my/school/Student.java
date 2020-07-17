package my.school;

public class Student {
	private String id;    //멤버변수-> 클래스내 어디에서나 인식 가능
	   private String name;
	   private int hakban;
	   private String password;
	   
	   public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;   //자신의 아이디 값을 setter로 대체해라
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getHakban() {
		return hakban;
	}


	public void setHakban(int hakban) {
		this.hakban = hakban;
	}


	public int age(){    //age() -> 메소드
		   int temp=10 ;    //temp -> 지역변수, 메소드내에서만 사용 가능
		   return temp ;    // 교수 설명(예) 
	   }


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	}


