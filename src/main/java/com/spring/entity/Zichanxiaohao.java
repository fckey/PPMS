package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "zichanxiaohao")
public class Zichanxiaohao implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "yuanquzichanid")
    private Integer yuanquzichanid;
    @Column(name = "zichanbianhao")
    private String zichanbianhao;
    @Column(name = "zichanmingcheng")
    private String zichanmingcheng;
    @Column(name = "zichanleixing")
    private String zichanleixing;
    @Column(name = "xiangmu")
    private String xiangmu;
    @Column(name = "xiaohaoshuliang")
    private Integer xiaohaoshuliang;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "caozuoren")
    private String caozuoren;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public Integer getYuanquzichanid() {
        return yuanquzichanid;
    }
    public void setYuanquzichanid(Integer yuanquzichanid) {
        this.yuanquzichanid = yuanquzichanid == null ? 0 : yuanquzichanid;
    }

    public String getZichanbianhao() {
        return zichanbianhao;
    }
    public void setZichanbianhao(String zichanbianhao) {
        this.zichanbianhao = zichanbianhao == null ? "" : zichanbianhao.trim();
    }

    public String getZichanmingcheng() {
        return zichanmingcheng;
    }
    public void setZichanmingcheng(String zichanmingcheng) {
        this.zichanmingcheng = zichanmingcheng == null ? "" : zichanmingcheng.trim();
    }

    public String getZichanleixing() {
        return zichanleixing;
    }
    public void setZichanleixing(String zichanleixing) {
        this.zichanleixing = zichanleixing == null ? "" : zichanleixing.trim();
    }

    public String getXiangmu() {
        return xiangmu;
    }
    public void setXiangmu(String xiangmu) {
        this.xiangmu = xiangmu == null ? "" : xiangmu.trim();
    }

    public Integer getXiaohaoshuliang() {
        return xiaohaoshuliang;
    }
    public void setXiaohaoshuliang(Integer xiaohaoshuliang) {
        this.xiaohaoshuliang = xiaohaoshuliang == null ? 0 : xiaohaoshuliang;
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getCaozuoren() {
        return caozuoren;
    }
    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren == null ? "" : caozuoren.trim();
    }

}
