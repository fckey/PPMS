package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "xiangmuxinxi")
public class Xiangmuxinxi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xiangmubianhao")
    private String xiangmubianhao;
    @Column(name = "xiangmumingcheng")
    private String xiangmumingcheng;
    @Column(name = "xiangmuleixing")
    private String xiangmuleixing;
    @Column(name = "xiangmuwendang")
    private String xiangmuwendang;
    @Column(name = "xiangmujianjie")
    private String xiangmujianjie;
    @Column(name = "tianjiaren")
    private String tianjiaren;
    @Column(name = "xiangmujinzhan")
    private String xiangmujinzhan;
    @Column(name = "addtime")
    private String addtime;


    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getXiangmubianhao() {
        return xiangmubianhao;
    }
    public void setXiangmubianhao(String xiangmubianhao) {
        this.xiangmubianhao = xiangmubianhao == null ? "" : xiangmubianhao.trim();
    }

    public String getXiangmumingcheng() {
        return xiangmumingcheng;
    }
    public void setXiangmumingcheng(String xiangmumingcheng) {
        this.xiangmumingcheng = xiangmumingcheng == null ? "" : xiangmumingcheng.trim();
    }

    public String getXiangmuleixing() {
        return xiangmuleixing;
    }
    public void setXiangmuleixing(String xiangmuleixing) {
        this.xiangmuleixing = xiangmuleixing == null ? "" : xiangmuleixing.trim();
    }

    public String getXiangmuwendang() {
        return xiangmuwendang;
    }
    public void setXiangmuwendang(String xiangmuwendang) {
        this.xiangmuwendang = xiangmuwendang == null ? "" : xiangmuwendang.trim();
    }

    public String getXiangmujianjie() {
        return xiangmujianjie;
    }
    public void setXiangmujianjie(String xiangmujianjie) {
        this.xiangmujianjie = xiangmujianjie == null ? "" : xiangmujianjie.trim();
    }

    public String getTianjiaren() {
        return tianjiaren;
    }
    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren == null ? "" : tianjiaren.trim();
    }

    public String getXiangmujinzhan() {
        return xiangmujinzhan;
    }
    public void setXiangmujinzhan(String xiangmujinzhan) {
        this.xiangmujinzhan = xiangmujinzhan == null ? "" : xiangmujinzhan.trim();
    }

    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? "" : addtime.trim();
    }

}
