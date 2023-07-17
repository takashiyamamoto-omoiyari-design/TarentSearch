package com.sample;

public class UserData {
    private String name;
    private String softSkill;

    public UserData(String name, String softSkill) {
        this.name = name;
        this.softSkill = softSkill;
    }

    public String getName() {
        return name;
    }

    public String getSoftSkill() {
        return softSkill;
    }
}
