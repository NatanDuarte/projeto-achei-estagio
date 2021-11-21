
package com.natanduarte.acheiestagio.model;

public class Internship {
    private String internshipStart;
    private String internshipEnd;
    private String daysSelection;
    private boolean workVariousDays;
    private String entryHours;
    private String quitHours;
    private boolean nonRegularWorkHours;
    private String activities;
    private ScholarshipAid aid;

    public Internship(String internshipStart, String internshipEnd, String daysSelection, boolean workVariousDays, String entryHours, String quitHours, boolean nonRegularWorkHours) {
        this.internshipStart = internshipStart;
        this.internshipEnd = internshipEnd;
        this.daysSelection = daysSelection;
        this.workVariousDays = workVariousDays;
        this.entryHours = entryHours;
        this.quitHours = quitHours;
        this.nonRegularWorkHours = nonRegularWorkHours;
        this.aid = null;
    }

    public String getInternshipStart() {
        return internshipStart;
    }

    public void setInternshipStart(String internshipStart) {
        this.internshipStart = internshipStart;
    }

    public String getInternshipEnd() {
        return internshipEnd;
    }

    public void setInternshipEnd(String internshipEnd) {
        this.internshipEnd = internshipEnd;
    }

    public String getDaysSelection() {
        return daysSelection;
    }

    public void setDaysSelection(String daysSelection) {
        this.daysSelection = daysSelection;
    }

    public boolean isWorkVariousDays() {
        return workVariousDays;
    }

    public void setWorkVariousDays(boolean workVariousDays) {
        this.workVariousDays = workVariousDays;
    }

    public String getEntryHours() {
        return entryHours;
    }

    public void setEntryHours(String entryHours) {
        this.entryHours = entryHours;
    }

    public String getQuitHours() {
        return quitHours;
    }

    public void setQuitHours(String quitHours) {
        this.quitHours = quitHours;
    }

    public boolean isNonRegularWorkHours() {
        return nonRegularWorkHours;
    }

    public void setNonRegularWorkHours(boolean nonRegularWorkHours) {
        this.nonRegularWorkHours = nonRegularWorkHours;
    }

    public String getActivities() {
        return activities;
    }

    public void setActivities(String activities) {
        this.activities = activities;
    }

    public ScholarshipAid getAid() {
        return aid;
    }

    public void setAid(ScholarshipAid aid) {
        this.aid = aid;
    }
}
