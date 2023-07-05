import Flutter
import UIKit
import Vision

public class OcrPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ocr", binaryMessenger: registrar.messenger())
    let instance = OcrPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result(dothing())
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  func dothing() -> String {
    guard let cgImage = UIImage(named: "/Users/antfie/Documents/StickerDocs/Engineering/_POC/test_data/raw/2020-11-21 16.33.10.jpg")?.cgImage else { return }
        
        
        let requestHandler = VNImageRequestHandler(cgImage: cgImage )


        // Create a new request to recognize text.
        let request = VNRecognizeTextRequest(completionHandler: recognizeTextHandler)


        do {
            // Perform the text-recognition request.
            try requestHandler.perform([request])
        } catch {
            print("Unable to perform the requests: \(error).")
        }

        return "d"
  }

  func recognizeTextHandler(request: VNRequest, error: Error?) {
        guard let observations =
                request.results as? [VNRecognizedTextObservation] else {
            return
        }
        let recognizedStrings = observations.compactMap { observation in
            // Return the string of the top VNRecognizedText instance.
            return observation.topCandidates(1).first?.string
        }
        

        print(recognizedStrings)
        // Process the recognized strings.
    }
}
