package service;

import entity.Users;

import java.util.List;

public interface UsersService {

    /**
     * 查询所有管理员
     * @return
     */
    public List<Users> usersManager();

    public List<Users> editUser(int id);

    public void updateUser(Users users);

    public void deleteUser(int id);

    public void addUser(Users users);
}
