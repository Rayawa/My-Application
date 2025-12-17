import {
  DividerShowType,
  HdsNavigation, HdsNavigationAttribute, HdsNavigationTitleMode, ScrollEffectType } from '@kit.UIDesignKit';
import { LengthMetrics } from '@kit.ArkUI';
const TITLE_BAR_HEIGHT_FREE: number = 138;
@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller();
  @State blankHeight: number = TITLE_BAR_HEIGHT_FREE ;

  build() {
    HdsNavigation() {
      // 内容区域 - 添加可滚动的内容
      Scroll(this.scroller) {
        Column() {
          Blank().height(this.blankHeight).width('100%')
          Image($r('app.media.wuhan'))
            .width('100%')
            .height(400)
            .objectFit(ImageFit.Cover)

          Image($r('app.media.wuhan'))
            .width('100%')
            .height(400)
            .objectFit(ImageFit.Cover)

          Image($r('app.media.wuhan'))
            .width('100%')
            .height(400)
            .objectFit(ImageFit.Cover)

          Image($r('app.media.wuhan'))
            .width('100%')
            .height(400)
            .objectFit(ImageFit.Cover)
        }
        .width('100%')
      }
      .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
    }
    .titleBar({
      style: { // 设置导航组件标题栏样式
        // 标题栏动态模糊样式，包括是否使能滚动动态模糊，动态模糊类型，动态模糊生效的滚动距离等
        scrollEffectOpts: {
          enableScrollEffect: true,
          scrollEffectType: ScrollEffectType.GRADIENT_BLUR,
          blurEffectiveStartOffset: LengthMetrics.vp(0),
          blurEffectiveEndOffset: LengthMetrics.vp(20)
        },
        originalStyle: { // 内容区滚动前初始样式设置
          backgroundStyle: { // 标题栏背板样式设置
            backgroundColor: $r('sys.color.ohos_id_color_background'),
          },
          contentStyle: { // 标题栏内容区样式设置，包括标题区域，菜单区域，返回按钮区域
            titleStyle: {
              mainTitleColor: $r('sys.color.font_primary'),
              subTitleColor: $r('sys.color.font_secondary')
            },
            menuStyle: {
              backgroundColor: $r('sys.color.comp_background_tertiary'),
              iconColor: $r('sys.color.icon_primary')
            },
            backIconStyle: {
              backgroundColor: $r('sys.color.comp_background_tertiary'),
              iconColor: $r('sys.color.icon_primary')
            }
          }
        },
        scrollEffectStyle: { // 内容区滚动超过blurEffectiveEndOffset后样式设置
          backgroundStyle: {
            backgroundColor: $r('sys.color.ohos_id_color_background_transparent'),
          },
          contentStyle: {
            titleStyle: {
              mainTitleColor: $r('sys.color.font_primary'),
              subTitleColor: $r('sys.color.font_secondary')
            },
            menuStyle: {
              backgroundColor: $r('sys.color.comp_background_tertiary'),
              iconColor: $r('sys.color.icon_primary')
            },
            backIconStyle: {
              backgroundColor: $r('sys.color.comp_background_tertiary'),
              iconColor: $r('sys.color.icon_primary')
            }
          }
        }
      },
      content: {
        title: {
          mainTitle: 'MainTitle',
          subTitle: 'SubTitle'
        },

        menu: {
          value: [{
            content: {
              label: 'menu1',
              icon: $r('sys.symbol.ohos_wifi'),
              isEnabled: true,
              action: () => {
                console.info("HdsNavigation menu1");
              }
            }
          }, {
            content: {
              label: 'menu2',
              icon: $r('sys.symbol.plus'),
              isEnabled: true,
            }
          }, {
            content: {
              label: 'menu3',
              icon: $r('sys.symbol.lock'),
            }
          }, {
            content: {
              label: 'menu4',
              icon: $r('sys.symbol.trunk'),
            }
          }]
        },
        backIcon: {
          label: 'backButton',
          icon: $r('sys.symbol.trunk'),
          isEnabled: true,
        }
      }
    })
    .bindToScrollable([this.scroller])

  }
}