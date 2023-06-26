//
//  ComponentsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

    // custom capsule button
func capsuleButton(isSelected: Bool = false,
                   label: String, action: @escaping () -> Void) -> some View {
    return Button(action: action) {
        Text(label)
           .frame(maxWidth: Screen().screenSize.width*0.25)
            .padding(8)
            .foregroundColor(isSelected ? .white: .black)
            .background(
                Capsule()
                    .fill( isSelected ? Color("ColorBlueBG"): Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1))
    }
}
//single textfield view
struct TextFieldView: View {
    @Binding var fieldName: String
    var fieldTitle: String
    var placeholder: String
    var isSecure: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(fieldTitle)
                .foregroundColor(.gray)
                .font(.system(size: 22, weight: .light))
            if isSecure {
                SecureField(placeholder, text: $fieldName)
                    .textFieldStyle(NiceTextFieldStyle())
                    .frame(maxWidth: Screen().screenSize.width*0.3)
            } else {
                TextField(placeholder, text: $fieldName)
                    .textFieldStyle(NiceTextFieldStyle())
                    .frame(maxWidth: Screen().screenSize.width*0.3)
            }
        }
    }
}
// custom texfield style
struct NiceTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding(14)
            .background(Color.gray.opacity(0.0))
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}
// custom button style
struct NiceButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: Screen().screenSize.width*0.3)
            .foregroundColor(.white)
            .cornerRadius(8)
            .font(.headline)
            .animation(.easeInOut, value: 1.0)
    }
}
// image page with blue background
struct HalfPageView: View {
    let image: String
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .clipped()
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding([.top, .horizontal], 64)

        }
    }
}
// getting screen sizes
struct Screen {
    var screenSize: CGSize {
#if os(iOS)
        return UIScreen.main.bounds.size
#elseif os(macOS)
        return NSScreen.main?.frame.size ?? .zero
#else
        return CGSize.zero
#endif
    }
}

//
struct CombineHalfView<AddedView: View>: View {

    @ObservedObject var viewModel: OnboardingViewModel
    var addedView: () -> AddedView
    var imageName: ImageNames
    var body: some View {

        GeometryReader { reader in
            HStack {
                HalfPageView(image: imageName.rawValue)
                    .frame(width: reader.size.width/2, height: reader.size.height)
                    .clipped()
                addedView()
                    .frame(width: reader.size.width/2, height: reader.size.height)
            }
            .background(.white)
        }.edgesIgnoringSafeArea(.all)
    }
}
enum ImageNames: String {
    case register
    case addphoto
    case pagethree
    case pagefour
    case success
}



