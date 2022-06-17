// 加载express模块
const express = require('express')
// 创建web服务实例
const server = express()
//配置CORS，指定放行的域名，防止出现跨域问题
const cors = require('cors')
server.use(cors({
  origin:"*"
}))

//配置multer中间件
const multer = require('multer')
obj = multer.diskStorage({
  destination : function(req, file, cb){ //指定目录
    cb(null, 'public')
  },
  filename : function (req, file, cb){ // 指定文件名
    let name = file.originalname
    // name:  abcd.jpg    xxxdfdd.zip
    let ext = name.substr(name.lastIndexOf('.'))
    cb(null, uuid.v4() + ext)
  }
})
const uploadTools = multer({
  storage : obj
})
const uuid = require('uuid')

// 静态资源托管upload目录
server.use(express.static('public'))

// 指定web服务器的监听端口
server.listen(4000, function(){
  console.log('文件上传服务已经启动...')
})


//接收请求
server.post('/upload',
  uploadTools.array('uploadFile'), (req, res)=>{
    console.log(req.files)
    let urls = []
    req.files.forEach(item=>{
      urls.push(`http://localhost:4000/${item.filename}`)
    })
    res.send({code:200, msg:'ok', urls})
})
