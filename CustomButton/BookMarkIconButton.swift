import SwiftUI

struct BookMarkIconButton: View {
    var body: some View {
        Button {
                    
                } label: {
                    Image(systemName: "pin.fill")
                        .frame(width: 52, height: 52)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(26)
                }
    }
}

#Preview {
    BookMarkIconButton()
}
