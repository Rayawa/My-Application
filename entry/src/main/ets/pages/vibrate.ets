import { webview } from '@kit.ArkWeb';
import { HdsNavigation, HdsNavigationTitleMode, ScrollEffectType, HdsNavigationAttribute } from '@kit.UIDesignKit';
import { curves, LengthMetrics, prompt, router, window, display } from '@kit.ArkUI';
import { APP_UA } from '../Components/constants';
import componentUtils from '@ohos.arkui.componentUtils';

@Entry
@Component
struct WebView {
  @State url: string = 'http://shenjack.top:10003/dashboard'
  scroller: Scroller = new Scroller();
  private web_controller: webview.WebviewController = new webview.WebviewController();
  @State scrollMode: NestedScrollMode = NestedScrollMode.PARENT_FIRST;
  @State mode: WebDarkMode = WebDarkMode.Auto;
  @State isLoading: boolean = false;
  async aboutToAppear() {
    const customUA = webview.WebviewController.getDefaultUserAgent() + " Hm_dashboard";
    webview.WebviewController.setAppCustomUserAgent(customUA);
  }
  build() {
    HdsNavigation() {
      Scroll(this.scroller) {
        Web({ src: this.url, controller: this.web_controller, renderMode: RenderMode.SYNC_RENDER })
          .id('Dashboard')
          .layoutMode(WebLayoutMode.FIT_CONTENT)
          .nestedScroll({
            scrollForward: NestedScrollMode.SELF_FIRST,
            scrollBackward: NestedScrollMode.SELF_FIRST
          })
          .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
          .domStorageAccess(true)
          .darkMode(this.mode)
          .forceDarkAccess(true)
          .width('100%')
          .backgroundColor($r('app.color.backcolor'))
          .onPageBegin(() => this.isLoading = true)
          .onPageEnd(() => this.isLoading = false)
          .onControllerAttached(() => {
            try {
              this.web_controller.setCustomUserAgent(APP_UA);
            } catch {
            }
          });

      }.expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
      .backgroundColor(Color.Red)
    }
    .navBarWidth('100%')
    .titleMode(HdsNavigationTitleMode.MODAL)
    .titleBar({
      style: {
        scrollEffectOpts: {
          enableScrollEffect: true,
          scrollEffectType: ScrollEffectType.GRADIENT_BLUR,
          blurEffectiveStartOffset: LengthMetrics.vp(0),
          blurEffectiveEndOffset: LengthMetrics.vp(20)
        },
        originalStyle: {
          backgroundStyle: {
            backgroundColor: $r('sys.color.ohos_id_color_background'),
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
        },
        scrollEffectStyle: {
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
          mainTitle: 'ArkWeb',
        },

      }
    })
  }
}