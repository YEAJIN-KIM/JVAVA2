package my.info;

public class MyInfo {
	private String name;
	private String id;
	private String hackbun;
	private String address;
	

	public MyInfo(String name, String id, String hackbun, String address) { //패키지 설정
		super();
		this.name = name;
		this.id = id;
		this.hackbun = hackbun;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHackbun() {
		return hackbun;
	}

	public void setHackbun(String hackbun) {
		this.hackbun = hackbun;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}

