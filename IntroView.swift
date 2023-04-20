import SwiftUI

struct IntroView: View {
    
    @State var isShown: Bool = false
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            HStack {
                VStack {
                    Image("Camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, alignment: .center)
                    Text("Image by rawpixel.com on Freepik")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                .padding(20)

                VStack(alignment: .leading, spacing: 6) {
                    Text("Composition ?")
                        .font(.custom("Chalkboard SE", size: 46))
                        .font(.largeTitle)
                        .padding(.bottom, 25)
                        .foregroundColor(.black)
                    
                    Text("""
                     Composition is the placement of subjects
                     and the background in a photo,
                     and it’s one of the most critical parts
                     of photography.
                     
                     Good composition doesn’t require an expensive camera
                     or an understanding of the technical details
                     of photography, but it can take years of practice
                     before it becomes second nature.
                    """)
                    .font(.custom("Chalkboard SE", size: 20))
//                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 30)
                    .foregroundColor(.black)
                    
                    Spacer()
                    NavigationLink(
                        destination: RuleOfSpaceView(),
                        label: {
                            Text("Learn more")
                        })
                    //                .buttonStyle(.borderedProminent)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                }
                .padding(20)
                .frame(
                    minWidth: 300,
                    maxHeight: 500,
                    alignment: .topLeading
                )
                
                .onAppear(perform: {
                    isShown.toggle()
                })
            }
            .padding(.trailing, 50)
            .padding(.bottom, 50)
        }
    }
}


