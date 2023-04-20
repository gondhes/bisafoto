import SwiftUI

struct CustomCameraView: View {
    
    @Binding var layerComposition: String
    
    let cameraService = CameraService()
    @Binding var capturedImage: UIImage?
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ZStack { 
            CameraView(cameraService: cameraService) {result in
                switch result {
                case .success(let photo):
                    if let data = photo.fileDataRepresentation() {
                        capturedImage = UIImage(data: data)
                        func savePic() {
                            UIImageWriteToSavedPhotosAlbum(capturedImage!, nil, nil, nil)
                        }
                        savePic()
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        print("Error: no image data found")
                    }
                case .failure(let err):
                    print(err.localizedDescription)
                }
            }
//            .ignoresSafeArea(.all, edges: .all)
//            .edgesIgnoringSafeArea(.all)
            
            Image(layerComposition)
                .resizable()
                .scaledToFill()
            HStack{
                Spacer()
                Button(action: {
                    cameraService.capturePhoto()
                }, label: {
                    Image(systemName: "circle")
                        .font(.system(size: 72))
                        .foregroundColor(.white)
                })
                .padding(.trailing)
            }
        }
        .onAppear(perform: {
            AppDelegate.orientationLock = .landscapeLeft
        })
    }
}


