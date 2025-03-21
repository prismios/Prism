![Prism Logo](https://github.com/prismios/Prism/blob/main/Assets/logo_small_transparent.png?raw=true)

# Prism Documentation

Welcome to the official documentation for **Prism** — your ultimate iPhone customization tool. Prism brings powerful tweaks and visual enhancements to your iDevice(iOS 17+) without the need for jailbreaking.

---

## 📌 Table of Contents

- [Introduction](#introduction)
- [Pros & Cons](#pros/cons)
  - [Pros](#pros)
  - [Cons](#cons)
- [Tweaks](#tweaks)
- [Installation](#installation)
- [Configuration](#configuration)
- [FAQ](#faq)
- [License](#license)

---

## 🚀 Introduction

**Prism** acts as a powerful, jailed alternative to traditional jailbreaks, offering customizable icons, UI tweaks, Lockscreen themes, and enhancements using sandboxed capabilities. Easily personalize and tune your iPhone without compromising security or version.

---

## ⚙️ Pros/Cons

### Pros
- **No Jailbreak Required**: Enjoy tweaks without voiding your warranty.
- **Native Feel**: Seamless integration with iOS.
- **Safe and Secure**: Maintains Apple’s security mechanisms, and has a negligable (likely 0%) chance of bootloops, spinlocks, etc.
- **Any Modern Version**: Prism will never be properly patched, as it adheres to Apple's rules.

### Cons
- **Limited System Access**: Some tweaks are restricted by iOS policies.
- **Performance**: Prism requires a shortcut to be ran at all times, possibly draining the battery (Still less than a modern jailbreak, though).
- **App Store Restrictions**: Prism cannot modify existing apps or inject tweaks.
- **Jank**: Since Prism uses clever, never-before seen methods for its tweaks, they may be prone to slight bugs, graphic errors, and/or unfixeable negative elements.

---

## 🧑‍💻 Tweaks

Prism utilizes a repository system, similar to your favourite jailbroken repository managers. 
The capabilities of Prism tweaks are rapidly increasing and are only bound by the APIs provided by Swift and Shortcuts(surprisingly large).
Currently, Prism has integration for the following tweak types:

- **Icon Themes**: Infinitely tweak your icons to a near-jailbreak level. Prism allows for custom imports and provides a library of first and third-party themes.
- **Icon Layout Tweaks**: Manage the icon's layout, size, etc within the widgets.
- **HTML Widgets (HS+LS)**: Render HTML/CSS/JS on the homescreens or lockscreen.
- **Lockscreen Themes**: Customize your lockscreen to a near-jailbreak level.
- **Custom Sounds**: Override certain sound events on your iDevice through shortcuts.
- **Dock Tweaks**: Hide your dock(Dockland method), add new functionality to it, and more!
- **Button Rebinds**: Override certain action events on your iDevice through shortcuts.

---

## 📥 Installation

Follow these steps to install Prism:

1. Download Prism from the App Store.
2. Follow the on-screen instructions within the app's onboarding process.
3. Grant necessary permissions and install the necessary shortcut.
4. Enjoy customizing your device! Further instructions are within the app.

> **Note:** Prism is compatible with iOS 17.0 and later.

---

## 🛠 Configuration

You can customize Prism’s behavior using the in-app settings. Example configuration file:

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
> Yes! Prism uses Apple-approved APIs, ensuring no security vulnerabilities.

**Q: Can I install third-party tweaks?**
> Prism supports community-made tweaks, reviewed for safety.

**Q: Does Prism affect battery life?**
> Minimal impact. Performance is optimized using native resources.

---

## 📜 License

Prism is licensed under the [MIT License](LICENSE).

For more information, visit the [GitHub repository](https://github.com/prism-project).
