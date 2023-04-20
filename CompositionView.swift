import SwiftUI

struct CompositionView: View {
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            VStack {
//                Spacer()
                HStack {
                    NavigationLink(
                        destination: RuleOfThirdView(),
                        label: {
                            Image("Button1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 300)
                                .cornerRadius(25)
                        })
                    .padding(.all, 30)
//                    .buttonStyle(.borderedProminent)
                    NavigationLink(
                        destination: SymmetryView(),
                        label: {
                            Image("Button2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 300)
                                .cornerRadius(25)
                        })
                    .padding(.all, 30)
//                    .buttonStyle(.borderedProminent)
                }
                HStack {
                    NavigationLink(
                        destination: GoldenRatioView(),
                        label: {
                            Image("Button3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 300)
                                .cornerRadius(25)
                        })
                    .padding(.all, 30)
//                    .buttonStyle(.borderedProminent)
                    NavigationLink(
                        destination: GoldenTriangleView(),
                        label: {
                            Image("Button4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 300)
                                .cornerRadius(25)
                        })
                    .padding(.all, 30)
//                    .buttonStyle(.borderedProminent)
                }
            }
            .padding(.bottom, 30)
        }
        .onAppear(perform: {
            AppDelegate.orientationLock = .landscapeLeft
        })
    }
}

