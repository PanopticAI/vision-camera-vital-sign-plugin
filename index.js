// main index.js

import type { Frame } from 'react-native-vision-camera'

/**
 * Scans QR codes.
 */
export function processVideoFrame(frame: Frame): string[] {
  'worklet'
  return __vseProcessVideoFrame(frame)
}