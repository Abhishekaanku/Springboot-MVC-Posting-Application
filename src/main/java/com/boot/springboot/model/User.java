package com.boot.springboot.model;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {
	  @NotNull
	  @Size(min = 3,max = 50)
	  private String userName;

	  @NotNull
	  @Size(min = 5,max=20)
	  private String password;

	  @NotNull
	  @Size(min=3,max = 30)
	  private String firstName;

	  private String lastName;
	  private String email;

	  private String address;

	  @Digits(integer = 10,fraction = 0)
	  private long phone;

	  private String profilePicture;


	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public long getPhone() {
		return phone;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

	public String getProfilePicture() {
		return profilePicture;
	}
}
