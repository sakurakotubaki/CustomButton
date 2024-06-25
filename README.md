# SwiftUIでカスタムボタンを作る

## 対象者
- icon & title があるボタンを作りたい
- 方法がよく分からない人向け

[こちらの海外のサイトを参考に作ります！](https://blog.stackademic.com/custom-buttons-in-swiftui-6224f87e01f0)

[iOSのアイコンはこちらのソフトを使って探します](https://developer.apple.com/jp/sf-symbols/)

**using**
![](https://storage.googleapis.com/zenn-user-upload/2c824455739c-20240626.png)

## プロジェクトの説明
よく使いそうなデザインのボタンを作っていこうと思います。
1. `label`を使ってアイコンを設定
2. `foregroundColor`でアイコンの色を設定
3. `background`で、アイコンの背景色を設定

### Icon Button
BookMark(お気に入りボタン)を作ってみましょう。Buttonに、labelをつけると、Iconを指定することができます。

```swift
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
```

![](https://storage.googleapis.com/zenn-user-upload/45805fe4477c-20240626.png)

### Icon Only Button
Iconだけの小さいボタンを作ってみましょう！
`.cornerRadius(15)`にすると丁度良い角丸のボタンを作れます。

```swift
import SwiftUI

struct BookMarkIconButton: View {
    var body: some View {
        Button {
                    
                } label: {
                    Image(systemName: "bookmark.fill")
                        .frame(width: 52, height: 52)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(15)
                }
    }
}

#Preview {
    BookMarkIconButton()
}
```

![](https://storage.googleapis.com/zenn-user-upload/f439afbbfec0-20240626.png)

### Circle Icon Button
丸のアイコンボタンを作成したいときは、`.cornerRadius(26)`に設定します。

```swift
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
```
![](https://storage.googleapis.com/zenn-user-upload/b5f4301f825c-20240626.png)

### Icon & Text Button
アイコン付きのテキストがあるボタンを作るには、HStackを使って、Image, Textのオブジェクトを横向きで重ねる必要がありました。

```swift
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
```

![](https://storage.googleapis.com/zenn-user-upload/268584f3133e-20240626.png)
