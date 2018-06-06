package service.impl;

import dao.UsersDao;
import dao.impl.UsersDaoImpl;
import entity.Users;
import service.UsersService;

import java.util.List;

public class UsersServiceImpl implements UsersService {
    UsersDao usersDao = new UsersDaoImpl();

    /**
     * 查询所有管理员
     * @return
     */
    @Override
    public List<Users> usersManager() {
        return usersDao.UserManager();
    }

    /**
     * 查询要修改的管理员信息
     * @param id
     * @return
     */
    @Override
    public List<Users> editUser(int id) {
        return usersDao.editUser(id);
    }

    /**
     * 更新管理员信息
     * @param users
     */
    @Override
    public void updateUser(Users users) {
        usersDao.updateUser(users);
    }

    /**
     * 删除管理员
     * @param id
     */
    @Override
    public void deleteUser(int id) {
        usersDao.deleteUser(id);
    }

    @Override
    public void addUser(Users users) {
        usersDao.addUser(users);
    }
}
