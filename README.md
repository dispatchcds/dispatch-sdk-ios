# DispatchSDK (iOS)

Dispatch CDS orders SDK for iOS — embeddable vehicle-orders feature
(list, filters, create/edit, additional costs, prolongation, map).
Distributed as a binary XCFramework. iOS 16+, SwiftUI/UIKit hosts.

SDK заказов техники Dispatch CDS для iOS. Бинарная дистрибуция (XCFramework),
исходный код — в приватном репозитории Dispatch CDS.

## Installation — Swift Package Manager

Xcode → File → Add Package Dependencies…

```
https://github.com/dispatchcds/dispatch-sdk-ios
```

## Quick start

SwiftUI:

```swift
import DispatchSDK

DispatchOrdersView(
    config: DispatchSDKConfig(
        baseURL: URL(string: "https://YOUR-PARK-API-HOST/api")!,
        tokenProvider: { yourTokenStorage.parkToken },
        locale: .ru,
        onClose: { /* пользователь закрыл виджет */ },
        onAuthExpired: { /* токен истёк — обновите */ }
    )
)
```

UIKit:

```swift
let ordersViewController = DispatchOrders.viewController(config: config)
present(ordersViewController, animated: true)
```

## Доступ

Использование SDK требует договора с Dispatch CDS и токена Park API.
Контакт: dispatch@bi.group. Лицензия: см. LICENSE.
