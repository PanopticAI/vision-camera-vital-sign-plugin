// main index.js

import type { Frame } from 'react-native-vision-camera'

export function processVideoFrame(frame: Frame, userInfo:any): string[] {
  'worklet'
  // @ts-ignore
  return __vseProcessVideoFrame(frame, userInfo)
}