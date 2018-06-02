package dao.impl;

import dao.LoginDao;
import entity.Users;
import untils.DaoUtlis;

import java.util.List;

public class LoginDaoImpl extends DaoUtlis implements LoginDao{
    @Override
    public List<Users> login(Users users) {
        String sql = "select * from users where uname = ? and upwd = ?";
        Object[] num = {users.getUname(),users.getUpwd()};
        List<Users> list = super.query(sql,num,Users.class);
        return (list!=null&&list.size()>0?list:null);
    }
}
