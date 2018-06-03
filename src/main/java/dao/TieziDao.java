package dao;

import entity.Tiezi;

import java.util.List;

public interface TieziDao {
    /**
     * 查询全部帖子
     * @return
     */
    public List<Tiezi> TieziShow();

    /**
     * 查询单个帖子
     * @return
     */
    public List<Tiezi> TieziSingleShow(Tiezi tiezi);

}
