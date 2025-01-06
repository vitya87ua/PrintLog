# PrintLog

Swift print on steroids

Includes:
 - fileID
 - line number
 - function name
 
## Install

#### Swift Package Manager

Add `https://github.com/vitya87ua/PrintLog.git` in the ["Swift Package Manager" tab.](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app)

## Usage

```swift
import PrintLog

func some() {
    Log("Hello")
    Log("Hello", state: .warning)
    Log("Hello", state: .error)
    Log("Hello", type: .dump())
}

---------------------------------------------------
 
Terminal:
 ✅ Log.swift ⏰ 4:22:33 PM #️⃣ 43 some() ⏩ Hello
 ⚠️ Log.swift ⏰ 4:22:33 PM #️⃣ 44 some() ⏩ Hello
 ‼️ Log.swift ⏰ 4:22:33 PM #️⃣ 45 some() ⏩ Hello
 ✅ Log.swift ⏰ 4:22:33 PM #️⃣ 45 some() ⏩ DUMP ⬇️
 ▿ 1 element
   - "Hello"
```
