const mysql=require('mysql');
const pool=mysql.createPool({
    host:'localhost',
    port:'3306',
    user:'root',
    password:'',
    database:'kz',
    connectionLimit:15
})
module.exports=pool;