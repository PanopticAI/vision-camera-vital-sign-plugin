// main index.js

import type { Frame } from 'react-native-vision-camera'
// @ts-ignore
import type { NormalizedFacebox,NormalizedLandmark,GetHealthResult, UserInfo } from 'react-native-vital-sign-plugin'

export interface ProcessVideoFrameResult {
  facebox?: NormalizedFacebox,
  faceLandmarks?: NormalizedLandmark[]
  healthResult?: GetHealthResult
}

export function processVideoFrame(frame: Frame, userInfo:UserInfo): ProcessVideoFrameResult {
  'worklet'
  // @ts-ignore
  return __vseProcessVideoFrame(frame, userInfo)
}