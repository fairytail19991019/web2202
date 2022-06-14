const express=require('express')
const pool=require('../pool')
const r=express.Router();

//修改购买状态
r.put('/updateorder',(req,res,next)=>{
    pool.query("select issold from kz_jiuke where gid=?",[req.body.gid],(err,result)=>{
        if(err){
            next(err)
            return
        }
        if(result[0].issold==false){
            pool.query("update kz_jiuke set issold=true where gid=?",[req.body.gid],(err,result)=>{
                console.log(req.body);
                if(err){
                    next(err)
                    return
                }
                console.log(result);
                res.send({code:200,msg:"ok"})
            })
        }else{
            pool.query("update kz_jiuke set issold=false where gid=?",[req.body.gid],(err,result)=>{
                if(err){
                    next(err)
                    return
                }
                console.log(result);
                res.send({code:200,msg:"ok"})
            })
        }
    })
})
//编辑用户信息
r.put('/edit',(req,res,next)=>{
    // console.log(req.body)
    pool.query('update kz_user set uname=?,upwd=?,email=?,phone=? where uid=?',[req.body.uname,req.body.upwd,req.body.email,req.body.phone,req.body.uid],(err,result)=>{
        if(err){
            next(err)
            return
        }
        // console.log(result)
        if(result.affectedRows!=0){
            res.send({code:200,msg:'数据修改成功'})
        }else{
            res.send({code:500,msg:'数据修改失败'})
        }
        
    })
})
//注册
r.post('/register',(req,res,next)=>{
    // console.log(req.body);
    pool.query('insert into kz_user set?',[req.body],(err,result)=>{
        if(err){
            next(err)
            return
        }
        // console.log(result);
        res.send({code:200,msg:"用户注册成功"})
    })
})
//登录
r.post('/login',(req,res,next)=>{
    // console.log(req.body);
    pool.query('select * from kz_user where phone=? and upwd=?',[req.body.phone,req.body.upwd],(err,result)=>{
        if(err){
            next(err);
            return;
        }
        // console.log(result);
        //通过返回数组的length判断是否登录成功
        if(result.length==0){
            res.send({code:500,msg:'登录失败',result:result})
        }else{
            res.send({code:200,msg:'登录成功',result:result})
        }
    })
})



module.exports=r;