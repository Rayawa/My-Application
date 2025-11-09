@Entry
@Component
struct radio {
  build() {
    Row() {
      Column() {
        Radio({ value: 'Radio1', group: 'radioGroup' })
          .height(60).width(60).checked(true)
          .onChange((isChecked: boolean) => {    console.log('Radio1 status is ' + isChecked)    })

        Radio({ value: 'Radio2', group: 'radioGroup' })
          .height(60).width(60)
          .onChange((isChecked: boolean) => {    console.log('Radio2 status is ' + isChecked)    })


        Divider()
          .margin(10)


        Radio({ value: 'Radio1', group: 'radioGroup1' })
          .height(60).width(60).checked(true)
          .onChange((isChecked: boolean) => {    console.log('Radio1 status is ' + isChecked)    })

        Radio({ value: 'Radio2', group: 'radioGroup1' })
          .height(60).width(60)
          .onChange((isChecked: boolean) => {    console.log('Radio2 status is ' + isChecked)    })

      }.width('100%')
    }.height('100%')
  }
}
