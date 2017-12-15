package com.web.shop.mapper;

import com.web.shop.domain.Profession;
import com.web.shop.domain.ProfessionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProfessionMapper {
    int countByExample(ProfessionExample example);

    int deleteByExample(ProfessionExample example);

    int deleteByPrimaryKey(Integer professionId);

    int insert(Profession record);

    int insertSelective(Profession record);

    List<Profession> selectByExample(ProfessionExample example);

    Profession selectByPrimaryKey(Integer professionId);

    int updateByExampleSelective(@Param("record") Profession record, @Param("example") ProfessionExample example);

    int updateByExample(@Param("record") Profession record, @Param("example") ProfessionExample example);

    int updateByPrimaryKeySelective(Profession record);

    int updateByPrimaryKey(Profession record);
}