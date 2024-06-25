import SwiftUI

struct TextLabelButton: View {
    var body: some View {
        Button{

                } label: {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("Appleでサインアップ")
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .background(.black)
                    .cornerRadius(15)
                    
                }
    }
}

#Preview {
    TextLabelButton()
}
