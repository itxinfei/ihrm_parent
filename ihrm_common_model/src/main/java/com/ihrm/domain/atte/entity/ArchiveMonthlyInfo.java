package com.ihrm.domain.atte.entity;


import com.ihrm.domain.atte.base.BaseEntity;
import com.ihrm.domain.system.User;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Map;

/**
 * @author itcast
 */
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "atte_archive_monthly_info")
@Data
//@AllArgsConstructor
//@NoArgsConstructor
public class ArchiveMonthlyInfo extends BaseEntity implements Serializable {

    @Id
    private String id;
    private String userId;
    private String atteArchiveMonthlyId;
    private String name;
    private String workNumber;
    private String mobile;
    private String atteSolution;
    private String department;
    private String workCity;
    private String yearLeaveDays;
    private String leaveDays;
    private String sickLeaveDays;
    private String longSickLeaveDays;
    private String marraiageLeaveDays;
    private String funeralLeaveDays;
    /**
     * 产假
     */
    private String maternityLeaveDays;
    private String rewardMaternityLeaveDays;
    /**
     * 陪产假
     */
    private String paternityLeaveDays;
    /**
     * 探亲假
     */
    private String homeLeavaDays;
    /**
     * 工伤假
     */
    private String accidentialLeaveDays;
    private String dayOffLeaveDays;
    /**
     * 产检假
     */
    private String doctorOffLeaveDays;
    /**
     * 流产假
     */
    private String abortionLeaveDays;
    private String normalDays;
    private String outgoingDays;
    private String onBusinessDays;
    private String laterTimes;
    private String earlyTimes;
    private Integer signedTimes;
    /**
     * 日均时长（自然日）
     */
    private String hoursPerDays;
    private String hoursPerWorkDay;
    private String hoursPerRestDay;
    private String clockRate;
    private String absenceDays;
    private Integer isFullAttendanceint;
    private String actualAtteUnofficialDays;
    private String actualAtteOfficialDays;
    /**
     * 应出勤工作日
     */
    private String workingDays;
    private String salaryStandards;
    /**
     * 计薪天数调整
     */
    private String salaryAdjustmentDays;
    /**
     * 工作时长
     */
    private String workHour;
    /**
     * 计薪天数（非正式）
     */
    private String salaryUnofficialDays;
    /**
     * 计薪天数（正式）
     */
    private String salaryOfficialDays;
    private String archiveDate;

    public ArchiveMonthlyInfo() {
    }

    public ArchiveMonthlyInfo(String id, String userId, String atteArchiveMonthlyId, String name, String workNumber, String mobile, String atteSolution, String department, String workCity, String yearLeaveDays, String leaveDays, String sickLeaveDays, String longSickLeaveDays, String marraiageLeaveDays, String funeralLeaveDays, String maternityLeaveDays, String rewardMaternityLeaveDays, String paternityLeaveDays, String homeLeavaDays, String accidentialLeaveDays, String dayOffLeaveDays, String doctorOffLeaveDays, String abortionLeaveDays, String normalDays, String outgoingDays, String onBusinessDays, String laterTimes, String earlyTimes, Integer signedTimes, String hoursPerDays, String hoursPerWorkDay, String hoursPerRestDay, String clockRate, String absenceDays, Integer isFullAttendanceint, String actualAtteUnofficialDays, String actualAtteOfficialDays, String workingDays, String salaryStandards, String salaryAdjustmentDays, String workHour, String salaryUnofficialDays, String salaryOfficialDays, String archiveDate) {
        this.id = id;
        this.userId = userId;
        this.atteArchiveMonthlyId = atteArchiveMonthlyId;
        this.name = name;
        this.workNumber = workNumber;
        this.mobile = mobile;
        this.atteSolution = atteSolution;
        this.department = department;
        this.workCity = workCity;
        this.yearLeaveDays = yearLeaveDays;
        this.leaveDays = leaveDays;
        this.sickLeaveDays = sickLeaveDays;
        this.longSickLeaveDays = longSickLeaveDays;
        this.marraiageLeaveDays = marraiageLeaveDays;
        this.funeralLeaveDays = funeralLeaveDays;
        this.maternityLeaveDays = maternityLeaveDays;
        this.rewardMaternityLeaveDays = rewardMaternityLeaveDays;
        this.paternityLeaveDays = paternityLeaveDays;
        this.homeLeavaDays = homeLeavaDays;
        this.accidentialLeaveDays = accidentialLeaveDays;
        this.dayOffLeaveDays = dayOffLeaveDays;
        this.doctorOffLeaveDays = doctorOffLeaveDays;
        this.abortionLeaveDays = abortionLeaveDays;
        this.normalDays = normalDays;
        this.outgoingDays = outgoingDays;
        this.onBusinessDays = onBusinessDays;
        this.laterTimes = laterTimes;
        this.earlyTimes = earlyTimes;
        this.signedTimes = signedTimes;
        this.hoursPerDays = hoursPerDays;
        this.hoursPerWorkDay = hoursPerWorkDay;
        this.hoursPerRestDay = hoursPerRestDay;
        this.clockRate = clockRate;
        this.absenceDays = absenceDays;
        this.isFullAttendanceint = isFullAttendanceint;
        this.actualAtteUnofficialDays = actualAtteUnofficialDays;
        this.actualAtteOfficialDays = actualAtteOfficialDays;
        this.workingDays = workingDays;
        this.salaryStandards = salaryStandards;
        this.salaryAdjustmentDays = salaryAdjustmentDays;
        this.workHour = workHour;
        this.salaryUnofficialDays = salaryUnofficialDays;
        this.salaryOfficialDays = salaryOfficialDays;
        this.archiveDate = archiveDate;
    }


    public ArchiveMonthlyInfo(User user) {
        this.userId = user.getId();
        this.name = user.getUsername();
        this.workNumber = user.getWorkNumber();
        this.department = user.getDepartmentName();
        this.mobile = user.getMobile();
    }


    public void setStatisData(Map map) {
        this.normalDays = (String) map.get("at1").toString(); //正常
        this.absenceDays = (String) map.get("at2").toString(); //旷工
        this.laterTimes = (String) map.get("at3").toString();//迟到
        this.earlyTimes = (String) map.get("at4").toString(); //早退
        this.leaveDays = (String) map.get("at8").toString(); //事假
        this.dayOffLeaveDays = (String) map.get("at17").toString(); //调休
        //平均工作日21.75
        this.workingDays = "21.75";
        //是否全勤
        this.isFullAttendanceint = Integer.parseInt(this.normalDays) >= 21.75 ? 0 : 1;
        //出勤天数 = 正常 + 早退 + 迟到
        this.actualAtteOfficialDays = Integer.parseInt(this.laterTimes) +
                Integer.parseInt(this.normalDays) +
                Integer.parseInt(this.earlyTimes) + "";
        //出勤天数 = 计薪天数
        this.salaryOfficialDays = this.actualAtteOfficialDays;
    }
}
