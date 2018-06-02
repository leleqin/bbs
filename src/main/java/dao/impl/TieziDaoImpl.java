package dao.impl;

import dao.TieziDao;
import entity.Tiezi;
import untils.DaoUtlis;

import java.util.List;

public class TieziDaoImpl extends DaoUtlis implements TieziDao {
    @Override
    public List<Tiezi> TieziShow() {
        String sql = "select * from tiezi";
        List<Tiezi> list = super.query(sql,null,Tiezi.class);
        return (list!=null&&list.size()>0?list:null);
    }
}
