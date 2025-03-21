![Prism Logo](https://github.com/prismios/Prism/blob/main/Assets/logo_small_transparent.png?raw=true)

# Prism Documentation

Welcome to the official documentation for **Prism** — your ultimate iPhone customization tool. Prism brings powerful tweaks and visual enhancements to your iDevice (iOS 17+) without the need for jailbreaking.

---

## 📌 Table of Contents

- [Introduction](#introduction)
- [Pros & Cons](#pros-and-cons)
- [Functionality](#functionality)
- [Tweaks](#tweaks)
- [Installation](#installation)
- [Configuration](#configuration)
- [FAQ](#faq)
- [License](#license)

---

## 🚀 Introduction

**Prism** acts as a powerful, jailed alternative to traditional jailbreaks, offering customizable icons, UI tweaks, lockscreen themes, and enhancements using sandboxed capabilities. Easily personalize and tune your iPhone without compromising security.

---

## ⚙️ Pros and Cons

### ✅ Pros

- **No Jailbreak Required**: Enjoy tweaks without voiding your warranty.
- **Native Feel**: Seamless integration with iOS.
- **Safe and Secure**: Maintains Apple’s security mechanisms with virtually no risk of bootloops or spinlocks.
- **Future-Proof**: Prism follows Apple’s guidelines, making it resilient to patches.

### ❗ Cons

- **Limited Access**: Certain tweaks are restricted by iOS.
- **Battery Impact**: Prism relies on a continuously running shortcut, but its power consumption is minimal.
- **App Store Restrictions**: Cannot modify existing apps.
- **Minor Bugs**: Some tweaks may experience occasional glitches.

---

## ⚙️ Functionality

Prism unites Apple’s **Swift APIs** and **Shortcut Actions** to provide powerful customization. It uses app groups and the local documents folder for communication. While the helper shortcut is essential for Prism’s functionality, its impact on battery is barely noticeable.

With every iOS update, Prism becomes more powerful as Apple introduces new APIs and actions. Unlike jailbreaks, Prism operates within the system’s bounds, ensuring stability and security.

---

## 🤝 Tweaks

Prism offers a tweak repository system, expanding its capabilities regularly. Below are some categories of available tweaks:

### **Icon Themes**
- Customize app icons using first- and third-party themes.
- Support for animated icons and dynamic effects.
- Apply icon packs with a single tap.

### **Icon Layout Tweaks**
- Adjust grid layouts, icon sizes, and spacing.
- Save and switch between different layouts.

### **HTML Widgets (HS + LS)**
- Add interactive HTML, CSS, and JS widgets.
- Display live data like weather and time.
- Supports both Home Screen and Lock Screen widgets.

### **Lockscreen Themes**
- Fully customize your lockscreen with animations and widgets.
- Supports guided access for an immersive experience.

### **Custom Sounds**
- Replace system sounds for events like unlocks and notifications.

### **Dock Tweaks**
- Modify your dock with transparency effects, overlays, and animations.

### **Button Rebinds**
- Remap hardware buttons to custom actions.

---

## 📥 Installation

1. Download Prism from the App Store.
2. Follow the in-app onboarding instructions.
3. Grant the necessary permissions and install the required shortcut.
4. Enjoy your customized iPhone!

*Prism requires iOS 17.0 or later.*

---

## 🛠 Configuration

Adjust Prism’s settings using the in-app configuration. Example config file:

```json
{
  "theme": "dark",
  "widgetOpacity": 0.8,
  "gestureControl": true
}
```

---

## ❓ FAQ

**Q: Is Prism safe to use?**
> Absolutely. Prism uses Apple-approved APIs, ensuring no security vulnerabilities.

**Q: Can I install third-party tweaks?**
> Yes, Prism supports community-made tweaks that undergo safety checks.

**Q: Does Prism affect battery life?**
> Battery impact is minimal due to efficient use of native resources.

---

## 📝 License

Prism is licensed under the [MIT License](LICENSE).

For more information, visit the [GitHub repository](https://github.com/prism-project).

