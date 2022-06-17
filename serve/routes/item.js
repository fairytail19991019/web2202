const express = require('express')
const pool = require('../pool')
const i = express.Router()

//订单接口
i.get('/order', (req, res, next) => {
    pool.query('select * from kz_jiuke where issold=true', (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result)
        if (result.length == 0) {
            res.send({ code: 500, msg: "no data" })
        } else {
            res.send({ code: 200, msg: "ok", result })

        }
    })
})

//查询各类目总热度之和
i.get('/total', (req, res, next) => {
    pool.query('select sum(hits) as total from kz_class group by category_id', (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result);
        res.send({ code: 200, msg: 'ok', result })
    })
})
//查询课程按时间降序排序
i.get('/desc', (req, res, next) => {
    pool.query('select id,title,hits,image,time from kz_class order by time desc limit 0,5', (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result);
        res.send({ code: 200, msg: 'ok', result })
    })
})
//修改点击时间接口
i.put('/updatetime', (req, res, next) => {
    console.log(req.body);
    pool.query('update kz_class set time=? where id=?', [req.body.time, req.body.id], (err, result) => {
        if (err) {
            next(err)
            return
        }
        res.send({ code: 200, msg: 'ok' })
    })
})
//课程详细页接口
i.get('/details', (req, res, next) => {
    // console.log(req.query);
    pool.query('select index_img,class_title,teacher_head,teacher,teacher_introduce,detail_img from kz_class where id=?', [req.query.cid], (err, result) => {
        if (err) {
            next(err)
            return
        }
        res.send({ code: 200, msg: 'ok', result })
    })
})
//查询接口
i.post('/search', (req, res, next) => {
    // console.log(req.body);
    let kw = '%' + `${req.body.kw}` + "%"
    pool.query('select * from kz_class where title like ?', [kw], (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result);
        if (result.length != 0) {
            res.send({ code: 200, message: "ok", result })
        } else {
            res.send({ code: 500, message: "no such data" })
        }
    })
})

//获取课程接口
i.get('/subject', (req, res, next) => {
    console.log(req.query)
    pool.query('select * from kz_subject', (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result)
        res.send({ message: 'ok', code: 200, result: result });
    })
})

//查找指定课程接口
i.get('/jiuke', (req, res, next) => {
    console.log(req.query);
    pool.query('select * from kz_jiuke where subject_id=?', [req.query.kid], (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result);
        if (result.length != 0) {
            res.send({ code: 200, msg: 'ok', result })
        } else {
            res.send({ code: 500, msg: 'err' })
        }
    })
})
//获取类目接口
i.get('/category', (req, res, next) => {
    // console.log(req.query)
    pool.query('select * from kz_category', (err, result) => {
        if (err) {
            next(err)
            return
        }
        // console.log(result)
        res.send({ message: 'ok', code: 200, result: result });
    })
})

//获取课程接口
i.get('/class', (req, res, next) => {
    // console.log(req.query)
    if (!req.query.cid) {
        // 获取客户端传递的page参数
        let page = req.query.page ? req.query.page : 1;

        // 存储每页显示的记录数
        let pagesize = 20;

        // 通过公式来计算从第几条记录开始返回
        let offset = (page - 1) * pagesize;

        // 用于存储获取到的总记录数
        let rowcount;

        // 获取指定分类下的文章总数
        let sql = 'SELECT COUNT(id) AS count FROM kz_class';
        pool.query(sql, (err, result) => {
            if (err) {
                next(err)
                return
            }
            // 将获取到总记录数赋给rowcount变量
            rowcount = result[0].count;
            /**************************************************/
            // 根据总记录数和每页显示的记录数来计算总页数
            let pagecount = Math.ceil(rowcount / pagesize);
            sql = 'SELECT * FROM kz_class LIMIT ?,?';
            pool.query(sql, [offset, pagesize], (err, result) => {
                if (err) {
                    next(err)
                    return
                }
                res.send({ message: 'ok', code: 200, result: result, pagecount: pagecount })
            })
        })
    } else {
        // 获取客户端传递的cid参数
        let cid = req.query.cid;

        // 获取客户端传递的page参数
        let page = req.query.page ? req.query.page : 1;

        // 存储每页显示的记录数
        let pagesize = 20;

        // 通过公式来计算从第几条记录开始返回
        let offset = (page - 1) * pagesize;

        // 用于存储获取到的总记录数
        let rowcount;

        // 获取指定分类下的文章总数
        let sql = 'SELECT COUNT(id) AS count FROM kz_class WHERE category_id=?';

        pool.query(sql, [cid], (err, result) => {
            if (err) {
                next(err)
                return
            }
            // 将获取到总记录数赋给rowcount变量
            rowcount = result[0].count;
            /**************************************************/
            // 根据总记录数和每页显示的记录数来计算总页数
            let pagecount = Math.ceil(rowcount / pagesize);
            sql = 'SELECT * FROM kz_class WHERE category_id=? LIMIT ?,?';
            pool.query(sql, [cid, offset, pagesize], (err, result) => {
                if (err) {
                    next(err)
                    return
                }
                res.send({ message: 'ok', code: 200, result, pagecount })
            })
        })
    }
})

module.exports = i;