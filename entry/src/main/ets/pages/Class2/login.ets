import router from '@ohos.router';
import prompt from '@ohos.prompt';

@Entry
@Component
struct PasswordPage {
  // 定义正确的密码，实际应用中可能来自更安全的地方
  private correctPassword: string = '123456'
  @State userInputPassword: string = ''

  build() {
    Column() {
      Text('进入抽奖页面')
        .fontColor(Color.Red)
        .fontSize(30)
        .fontWeight(600)
        .margin({bottom:20})
      TextInput({ placeholder: '请输入密码', text: this.userInputPassword })
        .width('80%')
        .height(40)
        .type(InputType.Password)
        .onChange((value: string) => {
          this.userInputPassword = value
        })

      Button('验证密码')
        .width('80%')
        .height(40)
        .margin({ top: 20 })
        .onClick(() => {
          this.validatePassword()
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  // 密码验证方法
  validatePassword() {
    if (this.userInputPassword === this.correctPassword) {
      router.pushUrl({
        url: 'pages/Class2/lottery'
      }).then(() => {
        console.info("跳转成功")
      }).catch((err: Error) => {
        console.error(`跳转失败，错误信息: ${err}`)
      })
      prompt.showToast({
        message: '跳转成功！',
        duration: 2000})
    } else {
      prompt.showToast({
        message: '密码不正确',
        duration: 2000
      })
    }
  }
}