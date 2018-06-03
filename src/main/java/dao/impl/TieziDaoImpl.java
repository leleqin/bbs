package dao.impl;

import dao.TieziDao;
import entity.Tiezi;
import untils.DaoUtlis;

import javax.rmi.CORBA.Tie;
import java.util.List;

public class TieziDaoImpl extends DaoUtlis implements TieziDao {
    @Override
    public List<Tiezi> TieziShow() {
        String sql = "select * from tiezi";
        List<Tiezi> list = super.query(sql,null,Tiezi.class);
        return (list!=null&&list.size()>0?list:null);
    }

    @Override
    public List<Tiezi> TieziSingleShow(Tiezi tiezi) {
        String sql = "select * from tiezi where tid = ?";
        Object[] num = {tiezi.getTid()};
        List<Tiezi> tieziList = super.query(sql,num,Tiezi.class);
        return (tieziList!=null&&tieziList.size()>0?tieziList:null);
    }
}
