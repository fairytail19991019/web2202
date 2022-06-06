const express=require('express')
const cors=require('cors')
const app=express()
const userRouter=require('./routes/user')
app.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}))
app.use(express.urlencoded({extended:true}))

app.use('/users',userRouter)

app.listen(3000,function(){
    console.log('服务器启动成功');
})

app.use((err,req,res,next)=>{
    //err接受的传递过来的错误
    if(err){
        //为了调试，需要查看错误原因
        console.log(err);
    }
    //响应服务器端错误
    res.send({code:502,msg:'服务器端错误'})
});