const express=require('express')
const pool=require('../pool')
const r=express.Router();
r.post('/register',(req,res,next)=>{
    console.log(req.body);
    pool.query('insert into kz_user set?',[req.body],(err,result)=>{
        if(err){
            next(err)
            return
        }
        console.log(result);
        res.send({code:200,msg:"用户注册成功"})
    })
})

r.post('/login',(req,res,next)=>{
    console.log(req.body);
    pool.query('select * from kz_user where phone=? and upwd=?',[req.body.phone,req.body.upwd],(err,result)=>{
        if(err){
            next(err);
            return;
        }
        console.log(result);
        //通过返回数组的length判断是否登录成功
        if(result.length==0){
            res.send({code:500,msg:'登录失败'})
        }else{
            res.send({code:200,msg:'登录成功'})
        }
    })
})



module.exports=r;