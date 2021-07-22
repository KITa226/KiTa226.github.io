var app = new Vue({
  el: '#app',
  data() {
    return {
      form: {
        firstName: '',
        lastName: '',
        tel: '',
        email: ''
      },
      errorMessage: {
        firstName: '名字を入力してください',
        lastName: '名前を入力してください',
        tel: '電話番号を入力してください',
        email: 'メールアドレスを入力してください'
      }
    }
  },

  computed: {
    validation() {
      const form = this.form
        return {
          firstName : !!form.firstName,
          lastName : !!form.lastName,
          tel : (() => {
            if(!!form.tel) {
              form.tel.replace(/[━.*‐.*―.*－.*\-.*ー.*\-]/gi,'')
              if (!form.tel.match(/^(0[5-9]0[0-9]{8}|0[1-9][1-9][0-9]{7})$/)) {
                return false
              }
              return true
            } else {
              return false
            }
          })(),
          email : (() => {
            if(!!form.email) {
              if (!form.email.match(/^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/)) {
                return false
              }
              return true
            } else {
              return false
            }
          })()
        }
      },
      isValid() {
        var validation = this.validation
        return Object.keys(validation).every(function (key) {
          return validation[key]
      })
    }
  }
})