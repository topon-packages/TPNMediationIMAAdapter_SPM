# TopOn - iOS Google Interactive Media Ads (IMA) Mediation Adapter

The TopOn Google Interactive Media Ads (IMA) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 15.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNMediationIMAAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNMediationIMAAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNMediationIMAAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```