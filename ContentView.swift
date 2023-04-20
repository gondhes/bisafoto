import SwiftUI

struct ContentView: View {
    
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    @Binding var compoLayer: String
    
    var body: some View {
        ZStack {
            if capturedImage != nil {
                ZStack {
//                    Image(uiImage: capturedImage!)
//                        .resizable()
//                        .scaledToFill()
//                        .ignoresSafeArea()
                    
                    Image("ChalkBackground")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    Text("""
Image captured successfully, please check your photo album.
or click the button below to retake the image.
""")
                        .font(.custom("Chalkboard SE", size: 20))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 150)
                        .foregroundColor(.black)
                    VStack {
                        Spacer()
                        Button(action: {
                            isCustomCameraViewPresented.toggle()
                            
                        }, label: {
                            Image(systemName: "arrow.triangle.2.circlepath.camera")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                        .padding(.top, 100)
                        .fullScreenCover(isPresented: $isCustomCameraViewPresented, content: {
                            CustomCameraView(layerComposition: $compoLayer, capturedImage: $capturedImage)
                        })
                        Spacer()
                    }
                }
                
            } else {
                ZStack {
                    Image("ChalkBackground")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    Text("Click the camera button below to capture image with photo composition guideline.")
                        .font(.custom("Chalkboard SE", size: 20))
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 150)
                        .foregroundColor(.black)
                    VStack {
                        Spacer()
                        Button(action: {
                            isCustomCameraViewPresented.toggle()
                            
                        }, label: {
                            Image(systemName: "camera.fill")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                        .padding(.top, 100)
                        .fullScreenCover(isPresented: $isCustomCameraViewPresented, content: {
                            CustomCameraView(layerComposition: $compoLayer, capturedImage: $capturedImage)
                        })
                        Spacer()
                    }
                }
                
            }
            
            
        }
    }
}

