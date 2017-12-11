package cn.cpz.entity;

import java.util.HashSet;
import java.util.Set;

public class Mcalss implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer classId;
	private String className;
	private String headTeacher;
	private String tel;
	private Set<Detail> details = new HashSet<Detail>(0);

	public Mcalss() {
	}

	public Mcalss(String className, String headTeacher, String tel, Set<Detail> details) {
		this.className = className;
		this.headTeacher = headTeacher;
		this.tel = tel;
		this.details = details;
	}

	public Integer getClassId() {
		return this.classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return this.className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getHeadTeacher() {
		return this.headTeacher;
	}

	public void setHeadTeacher(String headTeacher) {
		this.headTeacher = headTeacher;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Set<Detail> getDetails() {
		return this.details;
	}

	public void setDetails(Set<Detail> details) {
		this.details = details;
	}

}