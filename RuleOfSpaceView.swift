import SwiftUI

struct RuleOfSpaceView: View {
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            VStack {
                Text("Rule of Space")
                    .font(.custom("Chalkboard SE", size: 46))
                    .font(.largeTitle)
                    .padding(.top, 35)
                    .foregroundColor(.black)
                HStack {
                    VStack {
                        Image("JumpingCat1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500, alignment: .center)
                        Text("A")
                            .bold()
                            .foregroundColor(.black)
                    }
                    VStack {
                        Image("JumpingCat2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500, alignment: .center)
                        Text("B")
                            .bold()
                            .foregroundColor(.black)
                    }
                }
                HStack {
                    Text("""
                Picture B looks more pleasing to the eye because it applies The Rule of Space.
                
                Give your subject room for movement. If the subject is moving, or looking in a direction other than the camera,
                leave room in front of the subject to prevent the picture from feeling crowded.
                
                This example is just one of many other Photography Composition, do you know the other composition?
                """)
                    .font(.custom("Chalkboard SE", size: 20))
                    .multilineTextAlignment(.center)
                    .padding(.all, 10)
                    .foregroundColor(.black)
                }
                .padding(.bottom, 10)
                
                NavigationLink(
                    destination: CompositionView(),
                    label: {
                        Text("Let's find out!")
                    })
                .padding()
                .foregroundColor(.white)
                .background(Color(red: 0, green: 0, blue: 0.5))
                .clipShape(Capsule())
                .padding(.bottom, 100)
            }
        }
    }
}

