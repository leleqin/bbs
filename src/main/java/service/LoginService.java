package service;

import entity.Users;

import java.util.List;

public interface LoginService{
    /**
     * 验证用户登录
     * @param users
     * @return
     */
    public List<Users> login(Users users);
}
