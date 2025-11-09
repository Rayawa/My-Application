import { router } from '@kit.ArkUI';

@Entry
@Component
struct Chapter1 {
  build()
  {
    Scroll() {
      Column() {
        Column() {
          Text('Chapter 7\n容器组件开发')
            .fontSize(30)
            .fontWeight(800)
            .textAlign(TextAlign.Center)
            .margin({top:50})
          Divider()
            .margin(10)
          Column() {
            Text('一、布局概述')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('二、Column容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            Row() {
              Button('尺寸属性')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/attribute/demo_size' }).then(() => {
                    console.info('Succeeded in jumping to the size page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
              Text('width, height, size, padding, margin, constrainSize').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
              Text('用户点击某个UI组件时触发。').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
            }
            Row() {
              Button('位置属性')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/attribute/demo_position' }).then(() => {
                    console.info('Succeeded in jumping to the position page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
              Text('align, direction, position, markAnchor, offset, alignRules').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
              Text('位置属性用于设置组件的对齐方式、布局方向和显示位置。').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
            }
            Row() {
              Button('显示/隐藏属性')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/attribute/demo_visibility' }).then(() => {
                    console.info('Succeeded in jumping to the visibility page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
              Text('visibility: Visibility.{Hidden（占位）, Visible, None（隐藏不占位）}').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
              Text('显隐属性用于控制组件是否可见。').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
            }
            Row() {
              Button('背景属性')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/attribute/demo_background' }).then(() => {
                    console.info('Succeeded in jumping to the background page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
              Text('backgroundColor, backgroundImage, backgroundImageSize, backgroundImagePosition').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
              Text('背景属性用于设置组件的背景样式。').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
            }
            Row() {
              Button('禁用控制属性')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/attribute/demo_enable' }).then(() => {
                    console.info('Succeeded in jumping to the enable page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
              Text('enabled: boolean {true, false}').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
              Text('禁用属性控制组件是否可以进行交互。').layoutWeight(1).fontSize(12).textAlign(TextAlign.Center).margin(5)
            }

          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('三、Row容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('点击事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('用户点击某个UI组件时触发。')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Button('onClick示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_click' }).then(() => {
                    console.info('Succeeded in jumping to the click page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }

            // 第二行数据
            Row() {
              Text('焦点事件')
                .fontWeight(800)
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('点击、键盘导航或通过其他方式将焦点设置到某个UI组件上。\n 通过为UI组件添加onFocus和onBlur属性来指定焦点事件的处理函数。')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Button('onFocus示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_focus' }).then(() => {
                    console.info('Succeeded in jumping to the focus page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

            // 第三行数据
            Row() {
              Text('触摸事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('用户触摸屏幕上的UI组件时触发，实现与用户的手势交互和触摸操作相关的功能。')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('onTouch示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_touch' }).then(() => {
                    console.info('Succeeded in jumping to the touch page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)


          Column() {
            Text('四、Flex容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('Button组件概述')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('type: ButtonType {Capsule, Circle, Normal}')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('stateEffect: boolean\n //按钮按下时是否开启按压态显示效果')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)

            }

            // 第二行数据
            Row() {
              Text('Button组件事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('接口：Button(options?: {type?: ButtonType, stateEffect?: boolean})')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('Button示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_button' }).then(() => {
                    console.info('Succeeded in jumping to the button page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('五、List容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('Radio组件概述')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('value: sting\n //当前单选框的值')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('group: sting\n //当前单选框的所属群组名称，相同group的Radio只能有一个被选中')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('checked: boolean\n 设置单选框的选中状态。')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
            }

            // 第二行数据
            Row() {
              Text('Radio组件事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('接口：Radio(options: {value: string, group: string})')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('Radio示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_radio' }).then(() => {
                    console.info('Succeeded in jumping to the radio page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('六、Swiper容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('Toggle组件概述')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('用于在两个状态之间进行切换的组件，常用于表示开关或复选框的状态')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Text('type: ToggleType {Checkbox, Button, Switch}')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
            }

            //第二行数据
            Row() {
              Text('Toggle组件属性')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('selectedColor: ResourceColor \n //设置组件打开状态的背景颜色')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('switchPointColor: ResourceColor\n //设置Switch类型的圆形滑块颜色。')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)

            }

            // 第三行数据
            Row() {
              Text('Toggle组件事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('接口：Toggle(options: { type: ToggleType, isOn?: boolean })')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('Toggle示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_toggle' }).then(() => {
                    console.info('Succeeded in jumping to the toggle page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('七、Stack容器组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('TextInput组件概述')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('用于显示静态和动态文本内容的组件')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('content: string | Resource \n //文本内容。包含子组件Span时不生效，显示Span内容，并且此时text组件的样式不生效。')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
            }

            Column() {
              Text('Text属性')
                .textAlign(TextAlign.Start)
                .fontWeight(900)
                .width('100%')
                .margin({
                  left: 20,
                  top: 10,
                  right: 10,
                  bottom: 10
                })
              Row() {
                Text('textAlign: TextAlign')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本段落在水平方向的对齐方式 默认值：TextAlign.Start')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('textOverflow: {overflow: TextOverflow}')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本超长时的显示方式。 默认值：{overflow: TextOverflow.Clip}')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('maxLines: number')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本的最大行数。 默认值：Infinity')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('lineHeight: string | number | Resource')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本的文本行高，设置值不大于0时，不限制文本行高，自适应字体大小，Length为number类型时单位为fp。')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('decoration: { type: TextDecorationType, color?: ResourceColor }')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本装饰线样式及其颜色。 默认值：{ type: TextDecorationType.None, color：Color.Black }')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('baselineOffset: number | string')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本基线的偏移量，默认值0').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('letterSpacing: number | string')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本字符间距').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('minFontSize: number | string | Resource')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本最小显示字号。需配合maxFontSize以及maxLine或布局大小限制使用，单独设置不生效')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('maxFontSize: number | string | Resource')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本最大显示字号。需配合minFontSize以及maxLine或布局大小限制使用，单独设置不生效')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('textCase: TextCase')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本大小写。 默认值：TextCase.Normal')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('copyOption: CopyOptions')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('组件支持设置文本是否可复制粘贴。 默认值：CopyOptions.None')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

            }
            .padding(20)
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

            // 第三行数据
            Row() {
              Text('TextInput组件事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('接口：Text(content?: string | Resource)')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('Text示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_text' }).then(() => {
                    console.info('Succeeded in jumping to the text page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Column() {
            Text('八、RelativeContainer组件')
              .textAlign(TextAlign.Start)
              .fontSize(22)
              .fontWeight(900)
              .width('100%')
              .margin({
                left: 20,
                top: 10,
                right: 10,
                bottom: 10
              })

            // 第一行数据
            Row() {
              Text('TextInput组件概述')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('单行文本输入框组件，用于接收用户的文本输入')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('type: InputType {Normal, Password, Email, Number, PhoneNumber}')
                .layoutWeight(1)
                .fontSize(12)
                .textAlign(TextAlign.Center)
                .margin(5)
            }

            Column() {
              Text('TextInput属性')
                .textAlign(TextAlign.Start)
                .fontWeight(900)
                .width('100%')
                .margin({
                  left: 20,
                  top: 10,
                  right: 10,
                  bottom: 10
                })
              Row() {
                Text('type: InputType')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入框类型。默认值：InputType.Normal')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('placeholderColor: ResourceColor')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置placeholder文本颜色').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('placeholderFont: Font')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置placeholder文本样式').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('enterKeyType: EnterKeyType')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入法回车键类型，目前仅支持默认类型显示。默认值：EnterKeyType.Done')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('caretColor: ResourceColor')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入框光标颜色').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('maxLength: number')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置文本的最大输入字符数').layoutWeight(1).fontSize(10).textAlign(TextAlign.Center).margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('inputFilter: {value: ResourceStr,error?: (value: string) => void}')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('正则表达式，匹配表达式的输入允许显示，不匹配的输入将被过滤。目前仅支持单个字符匹配，不支持字符串匹配。- value：设置正则表达式。- error：正则匹配失败时，返回被过滤的内容')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('copyOption: CopyOptions')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入的文本是否可复制。设置CopyOptions.None时，当前TextInput中的文字无法被复制或剪切，仅支持粘贴')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('showPasswordIcon: boolean')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('密码输入模式时，输入框末尾的图标是否显示。默认值：true')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('style: TextInputStyle')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入框为默认风格或内联输入风格。默认值：TextInputStyle.Default')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

              Row() {
                Text('textAlign: TextAlign')
                  .layoutWeight(1)
                  .fontWeight(800)
                  .fontSize(12)
                  .textAlign(TextAlign.Center)
                  .margin(5)
                Text('设置输入文本在输入框中的对齐方式。默认值：TextAlign.Start')
                  .layoutWeight(1)
                  .fontSize(10)
                  .textAlign(TextAlign.Center)
                  .margin(5)
              }.width('100%').justifyContent(FlexAlign.SpaceBetween)

            }
            .padding(20)
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

            // 第三行数据
            Row() {
              Text('TextInput组件事件')
                .layoutWeight(1)
                .fontWeight(800)
                .textAlign(TextAlign.Center)
                .margin(5)
              Text('接口：TextInput(value?:{placeholder?: ResourceStr, text?: ResourceStr, controller?: TextInputController})')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .margin(5)
                .fontSize(12)
              Button('TextInput示例')
                .layoutWeight(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Demo/Chapter6/demo_textInput' }).then(() => {
                    console.info('Succeeded in jumping to the text input page.')
                  })
                })
                .backgroundColor(Color.Orange)
                .margin(5)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        Divider()
      }
    }.width('100%')
  }
}