<template>
    <div>
        <!-- 标题栏 -->
        <mt-header title="注册">
           
            <mt-button icon='back'  slot="left"> <router-link to="/home/index" style='text-decoration:none ;color:white'>返回</router-link></mt-button>
            
            <router-link to="/login" slot="right" style='text-decoration:none'>登录</router-link>
        </mt-header>
        <!-- 表单 -->
        <mt-field 
        v-model="uname" 
        type='text' 
        label='用户名' 
        placeholder="请输入用户名"
        :state='nameState'
        @blur.native.capture='checkName'
        ></mt-field>

        <mt-field 
        v-model="phone" 
        type='text' 
        label='手机号' 
        placeholder="请输入手机号"
        :state='phoneState'
        @blur.native.capture='checkPhone'
        ></mt-field>

        <mt-field 
        v-model="email" 
        type='text' 
        label='邮箱' 
        placeholder="请输入邮箱地址"
        :state='emailState'
        @blur.native.capture='checkEmail'
        ></mt-field>

        <mt-field 
        v-model="upwd" 
        type='password' 
        label='密码' 
        placeholder="请输入密码"
        :state='pwdState'
        @blur.native.capture='checkPwd'
        ></mt-field>

        <mt-field 
        v-model="repwd " 
        type='password' 
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
            checkPhone(){
                // 手机号输入框焦点失去后执行
                console.log('手机号:',this.name);
                // 验证手机号
                let reg=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/
                if(reg.test(this.phone)){
                    console.log('phone合法');  //返回true 表示验证成功
                    this.phoneState='success'
                    return true
                }else{
                    console.log('phone格式不正确');
                     this.phoneState='error'
                     return false
                }
            },
            checkEmail(){
                // 邮箱输入框焦点失去后执行
                console.log('邮箱:',this.name);
                // 验证邮箱
                let reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
                if(reg.test(this.email)){
                    console.log('email合法');  //返回true 表示验证成功
                    this.emailState='success'
                    return true
                }else{
                    console.log('email格式不正确');
                     this.emailState='error'
                     return false
                }
            },
            checkPwd(){
                let reg=/^\d{6}$/
                if(reg.test(this.upwd)){
                    this.pwdState='success'
                    return true
                }else{
                    this.pwdState='error'
                    return false
                }
            },
            checkRepwd(){
                let reg=/^\d{6}$/
                if(reg.test(this.repwd)&&this.upwd==this.repwd){
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
                console.log(`${this.uname},${this.upwd},${this.repwd}`); 
                let param =`uname=${this.uname }&upwd=${this.upwd}&email=${this.email}&phone=${this.phone}`
                this.axios.post('/users/register',param).then(res=>{
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
                uname: '',
                nameState:'',
                phone:'',
                phoneState:'',
                email:'',
                emailState:'',
                upwd: '',
                pwdState:'',
                repwd: '',
                repwdState:'',
            }
        },
    }
</script>

<style lang="scss" scoped>

</style>