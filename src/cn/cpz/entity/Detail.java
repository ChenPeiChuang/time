package cn.cpz.entity;

public class Detail implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Mcalss mcalss;
	private String courseName;
	private Integer weekBegin;
	private Integer weekEnd;
	private Integer section;
	private Integer xa;
	private Integer ya;
	private String teacherName;
	private String location;

	public Detail() {
	}

	public Detail(Mcalss mcalss, String courseName, Integer weekBegin,
			Integer weekEnd, Integer section, Integer xa, Integer ya,
			String teacherName, String location) {
		this.mcalss = mcalss;
		this.courseName = courseName;
		this.weekBegin = weekBegin;
		this.weekEnd = weekEnd;
		this.section = section;
		this.xa = xa;
		this.ya = ya;
		this.teacherName = teacherName;
		this.location = location;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Mcalss getMcalss() {
		return this.mcalss;
	}

	public void setMcalss(Mcalss mcalss) {
		this.mcalss = mcalss;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Integer getWeekBegin() {
		return this.weekBegin;
	}

	public void setWeekBegin(Integer weekBegin) {
		this.weekBegin = weekBegin;
	}

	public Integer getWeekEnd() {
		return this.weekEnd;
	}

	public void setWeekEnd(Integer weekEnd) {
		this.weekEnd = weekEnd;
	}

	public Integer getSection() {
		return this.section;
	}

	public void setSection(Integer section) {
		this.section = section;
	}

	public Integer getXa() {
		return this.xa;
	}

	public void setXa(Integer xa) {
		this.xa = xa;
	}

	public Integer getYa() {
		return this.ya;
	}

	public void setYa(Integer ya) {
		this.ya = ya;
	}

	public String getTeacherName() {
		return this.teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

}