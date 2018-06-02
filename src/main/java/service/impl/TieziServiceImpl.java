package service.impl;

import dao.TieziDao;
import dao.impl.TieziDaoImpl;
import entity.Tiezi;
import service.TieziService;

import java.util.List;

public class TieziServiceImpl implements TieziService {
    TieziDao tieziDao = new TieziDaoImpl();
    @Override
    public List<Tiezi> tieziShow() {
        return tieziDao.TieziShow();
    }
}
