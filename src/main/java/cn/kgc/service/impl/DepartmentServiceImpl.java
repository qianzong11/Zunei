package cn.kgc.service.impl;

import cn.kgc.dao.DepartmentDao;
import cn.kgc.entity.Department;
import cn.kgc.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Department)表服务实现类
 *
 * @author makejava
 * @since 2021-01-13 09:55:01
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;

    /**
     * 通过ID查询单条数据
     *
     * @param depid 主键
     * @return 实例对象
     */
    @Override
    public Department queryById(Integer depid) {
        return this.departmentDao.queryById(depid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Department> queryAllByLimit(int offset, int limit) {
        return this.departmentDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param department 实例对象
     * @return 实例对象
     */
    @Override
    public Department insert(Department department) {
        this.departmentDao.insert(department);
        return department;
    }

    /**
     * 修改数据
     *
     * @param department 实例对象
     * @return 实例对象
     */
    @Override
    public Department update(Department department) {
        this.departmentDao.update(department);
        return this.queryById(department.getDepid());
    }

    /**
     * 通过主键删除数据
     *
     * @param depid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer depid) {
        return this.departmentDao.deleteById(depid) > 0;
    }
}