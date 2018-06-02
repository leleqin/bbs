package dao;

import entity.Users;

import java.util.List;

public interface LoginDao {
    /**
     *验证用户登录
     * @param users
     * @return
     */
    public List<Users> login(Users users);

    /**
     * 中户注册
     * @param users
     */
    public void register(Users users);
}
