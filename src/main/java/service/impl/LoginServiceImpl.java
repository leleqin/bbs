package service.impl;

import dao.LoginDao;
import dao.impl.LoginDaoImpl;
import entity.Users;
import service.LoginService;

import java.util.List;

public class LoginServiceImpl implements LoginService {
    LoginDao loginDao = new LoginDaoImpl();
    @Override
    public List<Users> login(Users users) {
        List<Users> users1 = loginDao.login(users);
        return users1;
    }
}
