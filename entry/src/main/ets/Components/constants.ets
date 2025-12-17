
import { deviceInfo } from '@kit.BasicServicesKit';


export const dashboardURL: string = "dashboard";

export const submitURL: string = "submit";

export const changelog: string = "changelog";


export const APP_VERSION: string = "1.1.0-rc.1";

export const APP_UA: string =
    `top.rayawa.dashboard ${APP_VERSION} ${deviceInfo.osFullName} ${deviceInfo.productModel} ${deviceInfo.sdkApiVersion}`;

export const SUBMIT_PLATFORM: string = `ray_dashboard ${APP_VERSION}`