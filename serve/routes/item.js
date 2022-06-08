const express=require('express')
const pool=require('../pool')
const i=express.Router()
r.get('/category',(req,res,next)=>{
    console.log(req.query)
    pool.query('select * from kz_category',(err,result)=>{
        if(err){
            next(err)
            return
        }
        res.send({ message: 'ok', code: 200, result: result });
    })
})