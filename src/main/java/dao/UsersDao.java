package dao;

import entity.Users;

import java.util.List;

public interface UsersDao {
    /**
     * 查询所有用户
     * @return
     */
    public List<Users> UserManager();

    /**
     * 查询要编辑的管理员
     * @param id
     * @return
     */
    public List<Users> editUser(int id);

    /**
     * 更新管理员
     * @param users
     */
    public void updateUser(Users users);

    /**
     * 删除管理员
     * @param id
     */
    public void deleteUser(int id);

    public void addUser(Users users);
}
