import SwiftUI

@main
struct MyApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            GoldenRatioView()
            HomeView()
//            IntroView()
//            GuidingView()
//            SymmetryView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    static var orientationLock = UIInterfaceOrientationMask.landscapeLeft
    
    func application(_ application: UIApplication, supportedInterfaceOrientationFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}
