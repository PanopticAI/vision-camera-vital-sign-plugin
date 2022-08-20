// main index.js

import type { Frame } from 'react-native-vision-camera'

/**
 * Scans QR codes.
 */
export function processVideoFrame(frame: Frame): string[] {
  'worklet'
  // @ts-ignore
  return __vseProcessVideoFrame(frame)
}