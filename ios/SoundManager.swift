import Foundation
import TuningFork
import PermissionScope

@objc(SoundManager)
class SoundManager: NSObject, TunerDelegate {
  var bridge: RCTBridge!
  var tuner: Tuner?
  var running = false
  
  override init() {
    super.init()
    tuner = Tuner()
    tuner?.delegate = self
  }

  func tunerDidUpdate(tuner: Tuner, output: TunerOutput) {
    self.bridge.eventDispatcher().sendDeviceEventWithName("updateTuner", body: [
      "octave": output.octave,
      "frequency": output.frequency,
      "amplitude": output.amplitude,
      "distance": output.distance,
      "pitch": output.pitch
      
    ]);
  }
  
  func start() {
    tuner?.start()
    running = true
  }
  
  func destroy() {
    if running {
      running = false
      tuner?.stop()
    }
  }
}