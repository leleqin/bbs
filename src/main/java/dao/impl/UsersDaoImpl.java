package dao.impl;

import dao.UsersDao;
import entity.Users;
import untils.DaoUtlis;

import java.util.List;

public class UsersDaoImpl extends DaoUtlis implements UsersDao {
    /**
     * 查询所有管理员信息
     * @return
     */
    @Override
    public List<Users> UserManager() {
        String sql = "select * from users";
        List<Users> usersList = super.query(sql,null,Users.class);
        return (usersList!=null && usersList.size()>0 ? usersList : null);
    }

    /**
     * 查询要修改的管理员
     * @param id
     * @return
     */
    @Override
    public List<Users> editUser(int id) {
        String sql = "select * from users where uid = ?";
        Object[] num = {id};
        List<Users> usersList = super.query(sql,num,Users.class);
        return (usersList!=null && usersList.size()>0 ? usersList : null);
    }


    /**
     * 保存修改好的管理员
     * @param users
     */
    @Override
    public void updateUser(Users users) {
        String sql = "UPDATE users set uname = ?,upwd = ?,uemail = ? where uid = ?";
        Object[] num = {users.getUname(),users.getUpwd(),users.getUemail(),users.getUid()};
        super.update(sql,num);
    }

    @Override
    public void deleteUser(int id) {
        String sql = "delete from users where uid = ?";
        Object[] num = {id};
        super.update(sql,num);
    }

    @Override
    public void addUser(Users users) {
        String sql = "insert into users(uname,upwd,uemail) values(?,?,?)";
        Object[] num = {users.getUname(),users.getUpwd(),users.getUemail()};
        super.update(sql,num);
    }
}
