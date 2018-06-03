package service;

import entity.Tiezi;

import java.util.List;

public interface TieziService {
    /**
     * 帖子查询展示
     * @return
     */
    public List<Tiezi> tieziShow();

    /**
     * 帖子单独展示页
     * @return
     */
    public List<Tiezi> TieziSingleShow(Tiezi tiezi);
}
