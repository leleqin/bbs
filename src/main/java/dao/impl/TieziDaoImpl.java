package dao.impl;

import dao.TieziDao;
import entity.Tiezi;
import untils.DaoUtlis;

import javax.rmi.CORBA.Tie;
import java.util.List;

public class TieziDaoImpl extends DaoUtlis implements TieziDao {
    /**
     * 查询全部帖子
     * @return
     */
    @Override
    public List<Tiezi> TieziShow() {
        String sql = "select * from tiezi";
        List<Tiezi> list = super.query(sql,null,Tiezi.class);
        return (list!=null&&list.size()>0?list:null);
    }

    /**
     * 查询单个帖子
     * @param tiezi
     * @return
     */
    @Override
    public List<Tiezi> TieziSingleShow(Tiezi tiezi) {
        String sql = "select * from tiezi where tid = ?";
        String sql_num1 = "update tiezi set tnum1 = tnum1+1 where tid = ?";
        Object[] num = {tiezi.getTid()};
        super.update(sql_num1,num);
        List<Tiezi> tieziList = super.query(sql,num,Tiezi.class);
        return (tieziList!=null&&tieziList.size()>0?tieziList:null);
    }

    /**
     * 发帖
     * @param tiezi
     * @return
     */
    @Override
    public void fatie(Tiezi tiezi) {
        String sql = "INSERT INTO tiezi (title,tcontent) VALUES(?,?);";
        Object[] num = {tiezi.getTitle(),tiezi.getTcontent()};
        super.update(sql,num);
    }
}
