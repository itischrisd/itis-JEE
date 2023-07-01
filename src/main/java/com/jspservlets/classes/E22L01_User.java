package com.jspservlets.classes;

public class E22L01_User {
    private String firstName;
    private String lastName;

    public E22L01_User() {
        firstName = "John";
        lastName = "Doe";
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
}
