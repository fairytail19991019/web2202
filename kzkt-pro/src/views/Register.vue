<template>
    <div>
        <!-- 标题栏 -->
        <mt-header title="注册">
           
            <mt-button icon='back'  slot="left"> <router-link to="/home/index" style='text-decoration:none ;color:white'>返回</router-link></mt-button>
            
            <router-link to="/login" slot="right" style='text-decoration:none'>登录</router-link>
        </mt-header>
        <!-- 表单 -->
        <mt-field 
        v-model="name" 
        typr='text' 
        label='用户名' 
        placeholder="请输入用户名"
        :state='nameState'
        @blur.native.capture='checkName'
        ></mt-field>

        <mt-field 
        v-model="pwd" 
        typr='password' 
        label='密码' 
        placeholder="请输入密码"
        :state='pwdState'
        @blur.native.capture='checkPwd'
        ></mt-field>

        <mt-field 
        v-model="repwd " 
        typr='password' 
        label='确认密码' 
        placeholder="请再次输入密码"
        :state='repwdState'
        @blur.native.capture='checkRepwd'
        ></mt-field>
        <!-- 按钮 -->
        <mt-button type='primary' size='large' @click="regist">快速注册</mt-button> 
    </div>
</template>

<script>
    export default {
        methods:{
            checkName(){
                // 用户名输入框焦点失去后执行
                console.log('用户名:',this.name);
                // 验证用户名
                let reg=/^\w{3,15}$/
                if(reg.test(this.name)){
                    console.log('name合法');  //返回true 表示验证成功
                    this.nameState='success'
                    return true
                }else{
                    console.log('name格式不正确');
                     this.nameState='error'
                     return false
                }

            },
            checkPwd(){
                let reg=/^\d{6}$/
                if(reg.test(this.pwd)){
                    this.pwdState='success'
                    return true
                }else{
                    this.pwdState='error'
                    return false
                }
            },
            checkRepwd(){
                let reg=/^\d{6}$/
                if(reg.test(this.repwd)&&this.pwd==this.repwd){
                    this.repwdState='success'
                    return true
                }else{
                    this.repwdState='error'
                    return false
                }

            },
            regist(){ //点击注册后执行
                // 以次验证name pwd repwd
                if( this.checkName() & 
                    this.checkPwd()  &
                    this.checkRepwd()){
                   // 都验证通过之后 执行注册业务
                console.log(`${this.name},${this.pwd},${this.repwd}`); 
                let param =`username=${this.name }&password=${this.pwd}`
                this.axios.post('/register',param).then(res=>{
                    console.log('注册结果:',res,this);
                    if(res.data.code==200){//注册成功
                        this.$router.push('/login')
                        this.$toast('注册成功')
                    }else{//注册失败
                        this.$messagebox({
                            title:'注意',
                            message:'用户已存在'
                        })
                    }
                })

                }
                
                   
            }
        },
        data() {
            return {
                name: '',
                nameState:'',
                pwd: '',
                pwdState:'',
                repwd: '',
                repwdState:'',
            }
        },
    }
</script>

<style lang="scss" scoped>

</style>