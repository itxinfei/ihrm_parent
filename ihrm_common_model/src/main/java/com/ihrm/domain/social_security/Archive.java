package com.ihrm.domain.social_security;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "ss_archive")
@Data
//@NoArgsConstructor
//@AllArgsConstructor
public class Archive implements Serializable {

    private static final long serialVersionUID = -7883369133555989567L;

    @Id
    private String id;
    /**
     * 企业id
     */
    private String companyId;
    /**
     * 年月
     */
    private String yearsMonth;
    /**
     * 创建时间
     */
    private Date creationTime;
    /**
     * 企业缴费
     */
    private BigDecimal enterprisePayment;
    /**
     * 个人缴费
     */
    private BigDecimal personalPayment;
    /**
     * 合计
     */
    private BigDecimal total;


    public Archive(String id, String companyId, String yearsMonth, Date creationTime, BigDecimal enterprisePayment, BigDecimal personalPayment, BigDecimal total) {
        this.id = id;
        this.companyId = companyId;
        this.yearsMonth = yearsMonth;
        this.creationTime = creationTime;
        this.enterprisePayment = enterprisePayment;
        this.personalPayment = personalPayment;
        this.total = total;
    }

    public Archive(String companyId, String yearMonth) {
        this.companyId = companyId;
        this.yearsMonth = yearMonth;
    }

    public Archive() {
    }
}
