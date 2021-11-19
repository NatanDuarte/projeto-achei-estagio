
package com.natanduarte.acheiestagio.model;

public class Internship {
    private String internshipStart;
    private String internshipEnd;
    private String daysSelection;
    private boolean workVariousDays;
    private String entryHous;
    private String quitHous;
    private boolean nonRegularWorkHours;
    private String activities;
    private ScholarshipAid aid;

    public Internship(String internshipStart, String internshipEnd, String daysSelection, boolean workVariousDays, String entryHous, String quitHous, boolean nonRegularWorkHours) {
        this.internshipStart = internshipStart;
        this.internshipEnd = internshipEnd;
        this.daysSelection = daysSelection;
        this.workVariousDays = workVariousDays;
        this.entryHous = entryHous;
        this.quitHous = quitHous;
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

    public String getEntryHous() {
        return entryHous;
    }

    public void setEntryHous(String entryHous) {
        this.entryHous = entryHous;
    }

    public String getQuitHous() {
        return quitHous;
    }

    public void setQuitHous(String quitHous) {
        this.quitHous = quitHous;
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
