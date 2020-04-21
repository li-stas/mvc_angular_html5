package ru.javastudy.mvcHtml5Angular.mvc.jdbc;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RptMapper implements RowMapper {
    @Override
    public List<List<String>> mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        List<List<String>> aRecList = new ArrayList<List<String>>();
        ResultSetMetaData md = resultSet.getMetaData();
        int cols = md.getColumnCount();

        if (resultSet.next()) {
            do {
                List<String> columnList = new ArrayList<String>();
                for (int i = 0; i < cols; i++) {
                    columnList.add(resultSet.getString(i + 1));
                }
                aRecList.add(columnList);
            } while (resultSet.next());
        }

        System.out.println("int cols = " + md.getColumnCount());
        System.out.println("aRecList = " + aRecList.toString());
        return aRecList;
    }
}
