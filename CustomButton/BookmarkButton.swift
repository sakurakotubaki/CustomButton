import SwiftUI

struct BookmarkButton: View {
    var body: some View {
        Button {
                    
                } label: {
                    Image(systemName: "bookmark.fill")
                        .frame(width: 52, height: 52)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(15)
                }
            }
}

#Preview {
    BookmarkButton()
}
