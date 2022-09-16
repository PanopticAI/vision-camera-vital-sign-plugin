// main index.js

import type { Frame } from 'react-native-vision-camera'
// @ts-ignore
import type { NormalizedFacebox,NormalizedLandmark,GetHealthResult, UserInfo } from 'react-native-vital-sign-plugin'

export interface ProcessFrameResult {
  facebox?: NormalizedFacebox
  faceLandmarks?: NormalizedLandmark[]
  healthResult?: GetHealthResult
}

export interface ProcessFrameOptions {
  videoFrame: Frame
  userInfo: UserInfo
}

export function processFrame(frame: any, bounds: NormalizedFacebox | undefined, userInfo: UserInfo): GetHealthResult {
  'worklet';
  // @ts-ignore
  // eslint-disable-next-line no-undef
  return __vseProcessFrame(frame, bounds, userInfo);
}

export function processVideoFrame(options: ProcessFrameOptions): ProcessFrameResult {
  'worklet';
  // @ts-ignore
  // eslint-disable-next-line no-undef
  return __vseProcessFrame(options.videoFrame, options.userInfo)
}
